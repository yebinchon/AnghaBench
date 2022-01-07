; ModuleID = '/home/carl/AnghaBench/linux/net/x25/extr_af_x25.c_x25_new_lci.c'
source_filename = "/home/carl/AnghaBench/linux/net/x25/extr_af_x25.c_x25_new_lci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x25_neigh = type { i32 }
%struct.sock = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x25_neigh*)* @x25_new_lci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25_new_lci(%struct.x25_neigh* %0) #0 {
  %2 = alloca %struct.x25_neigh*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  store %struct.x25_neigh* %0, %struct.x25_neigh** %2, align 8
  store i32 1, i32* %3, align 4
  br label %5

5:                                                ; preds = %17, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.x25_neigh*, %struct.x25_neigh** %2, align 8
  %8 = call %struct.sock* @x25_find_socket(i32 %6, %struct.x25_neigh* %7)
  store %struct.sock* %8, %struct.sock** %4, align 8
  %9 = icmp ne %struct.sock* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %5
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call i32 @sock_put(%struct.sock* %11)
  %13 = load i32, i32* %3, align 4
  %14 = add i32 %13, 1
  store i32 %14, i32* %3, align 4
  %15 = icmp eq i32 %14, 4096
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %19

17:                                               ; preds = %10
  %18 = call i32 (...) @cond_resched()
  br label %5

19:                                               ; preds = %16, %5
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local %struct.sock* @x25_find_socket(i32, %struct.x25_neigh*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
