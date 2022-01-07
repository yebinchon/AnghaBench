; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_stp.c_br_should_become_designated_port.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_stp.c_br_should_become_designated_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i64, i64, i64, i32, i32, %struct.net_bridge* }
%struct.net_bridge = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge_port*)* @br_should_become_designated_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_should_become_designated_port(%struct.net_bridge_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_bridge_port*, align 8
  %4 = alloca %struct.net_bridge*, align 8
  %5 = alloca i32, align 4
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %3, align 8
  %6 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %7 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %6, i32 0, i32 5
  %8 = load %struct.net_bridge*, %struct.net_bridge** %7, align 8
  store %struct.net_bridge* %8, %struct.net_bridge** %4, align 8
  %9 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %10 = call i64 @br_is_designated_port(%struct.net_bridge_port* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %64

13:                                               ; preds = %1
  %14 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %15 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %14, i32 0, i32 4
  %16 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %17 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %16, i32 0, i32 2
  %18 = call i32 @memcmp(i32* %15, i32* %17, i32 8)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %64

21:                                               ; preds = %13
  %22 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %23 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %26 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %64

30:                                               ; preds = %21
  %31 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %32 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %35 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %64

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %42 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %41, i32 0, i32 1
  %43 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %44 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %43, i32 0, i32 3
  %45 = call i32 @memcmp(i32* %42, i32* %44, i32 8)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 1, i32* %2, align 4
  br label %64

49:                                               ; preds = %40
  %50 = load i32, i32* %5, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %64

53:                                               ; preds = %49
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %56 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %59 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store i32 1, i32* %2, align 4
  br label %64

63:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %62, %52, %48, %38, %29, %20, %12
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @br_is_designated_port(%struct.net_bridge_port*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
