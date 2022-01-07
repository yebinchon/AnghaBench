; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock.c_proto_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock.c_proto_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto = type { %struct.TYPE_2__*, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32*, i32 }

@proto_list_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proto_unregister(%struct.proto* %0) #0 {
  %2 = alloca %struct.proto*, align 8
  store %struct.proto* %0, %struct.proto** %2, align 8
  %3 = call i32 @mutex_lock(i32* @proto_list_mutex)
  %4 = load %struct.proto*, %struct.proto** %2, align 8
  %5 = call i32 @release_proto_idx(%struct.proto* %4)
  %6 = load %struct.proto*, %struct.proto** %2, align 8
  %7 = getelementptr inbounds %struct.proto, %struct.proto* %6, i32 0, i32 3
  %8 = call i32 @list_del(i32* %7)
  %9 = call i32 @mutex_unlock(i32* @proto_list_mutex)
  %10 = load %struct.proto*, %struct.proto** %2, align 8
  %11 = getelementptr inbounds %struct.proto, %struct.proto* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @kmem_cache_destroy(i32* %12)
  %14 = load %struct.proto*, %struct.proto** %2, align 8
  %15 = getelementptr inbounds %struct.proto, %struct.proto* %14, i32 0, i32 2
  store i32* null, i32** %15, align 8
  %16 = load %struct.proto*, %struct.proto** %2, align 8
  %17 = getelementptr inbounds %struct.proto, %struct.proto* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @req_prot_cleanup(i32 %18)
  %20 = load %struct.proto*, %struct.proto** %2, align 8
  %21 = getelementptr inbounds %struct.proto, %struct.proto* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %48

24:                                               ; preds = %1
  %25 = load %struct.proto*, %struct.proto** %2, align 8
  %26 = getelementptr inbounds %struct.proto, %struct.proto* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %48

31:                                               ; preds = %24
  %32 = load %struct.proto*, %struct.proto** %2, align 8
  %33 = getelementptr inbounds %struct.proto, %struct.proto* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @kmem_cache_destroy(i32* %36)
  %38 = load %struct.proto*, %struct.proto** %2, align 8
  %39 = getelementptr inbounds %struct.proto, %struct.proto* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @kfree(i32 %42)
  %44 = load %struct.proto*, %struct.proto** %2, align 8
  %45 = getelementptr inbounds %struct.proto, %struct.proto* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %31, %24, %1
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @release_proto_idx(%struct.proto*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kmem_cache_destroy(i32*) #1

declare dso_local i32 @req_prot_cleanup(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
