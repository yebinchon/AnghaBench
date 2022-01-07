; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_fragment.c_inet_frags_fini.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_fragment.c_inet_frags_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_frags = type { i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inet_frags_fini(%struct.inet_frags* %0) #0 {
  %2 = alloca %struct.inet_frags*, align 8
  store %struct.inet_frags* %0, %struct.inet_frags** %2, align 8
  %3 = load %struct.inet_frags*, %struct.inet_frags** %2, align 8
  %4 = getelementptr inbounds %struct.inet_frags, %struct.inet_frags* %3, i32 0, i32 2
  %5 = call i64 @refcount_dec_and_test(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.inet_frags*, %struct.inet_frags** %2, align 8
  %9 = getelementptr inbounds %struct.inet_frags, %struct.inet_frags* %8, i32 0, i32 1
  %10 = call i32 @complete(i32* %9)
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.inet_frags*, %struct.inet_frags** %2, align 8
  %13 = getelementptr inbounds %struct.inet_frags, %struct.inet_frags* %12, i32 0, i32 1
  %14 = call i32 @wait_for_completion(i32* %13)
  %15 = load %struct.inet_frags*, %struct.inet_frags** %2, align 8
  %16 = getelementptr inbounds %struct.inet_frags, %struct.inet_frags* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @kmem_cache_destroy(i32* %17)
  %19 = load %struct.inet_frags*, %struct.inet_frags** %2, align 8
  %20 = getelementptr inbounds %struct.inet_frags, %struct.inet_frags* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  ret void
}

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @kmem_cache_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
