; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_group.c_tipc_group_self.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_group.c_tipc_group_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_group = type { i32, i32, i32 }
%struct.tipc_name_seq = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_group_self(%struct.tipc_group* %0, %struct.tipc_name_seq* %1, i32* %2) #0 {
  %4 = alloca %struct.tipc_group*, align 8
  %5 = alloca %struct.tipc_name_seq*, align 8
  %6 = alloca i32*, align 8
  store %struct.tipc_group* %0, %struct.tipc_group** %4, align 8
  store %struct.tipc_name_seq* %1, %struct.tipc_name_seq** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.tipc_group*, %struct.tipc_group** %4, align 8
  %8 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.tipc_name_seq*, %struct.tipc_name_seq** %5, align 8
  %11 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load %struct.tipc_group*, %struct.tipc_group** %4, align 8
  %13 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.tipc_name_seq*, %struct.tipc_name_seq** %5, align 8
  %16 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.tipc_group*, %struct.tipc_group** %4, align 8
  %18 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.tipc_name_seq*, %struct.tipc_name_seq** %5, align 8
  %21 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.tipc_group*, %struct.tipc_group** %4, align 8
  %23 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %6, align 8
  store i32 %24, i32* %25, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
