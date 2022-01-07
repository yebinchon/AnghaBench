; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_seg6_local_get_encap_size.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_seg6_local_get_encap_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwtunnel_state = type { i32 }
%struct.seg6_local_lwt = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@SEG6_LOCAL_SRH = common dso_local global i32 0, align 4
@SEG6_LOCAL_TABLE = common dso_local global i32 0, align 4
@SEG6_LOCAL_NH4 = common dso_local global i32 0, align 4
@SEG6_LOCAL_NH6 = common dso_local global i32 0, align 4
@SEG6_LOCAL_IIF = common dso_local global i32 0, align 4
@SEG6_LOCAL_OIF = common dso_local global i32 0, align 4
@SEG6_LOCAL_BPF = common dso_local global i32 0, align 4
@MAX_PROG_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwtunnel_state*)* @seg6_local_get_encap_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seg6_local_get_encap_size(%struct.lwtunnel_state* %0) #0 {
  %2 = alloca %struct.lwtunnel_state*, align 8
  %3 = alloca %struct.seg6_local_lwt*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.lwtunnel_state* %0, %struct.lwtunnel_state** %2, align 8
  %6 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %2, align 8
  %7 = call %struct.seg6_local_lwt* @seg6_local_lwtunnel(%struct.lwtunnel_state* %6)
  store %struct.seg6_local_lwt* %7, %struct.seg6_local_lwt** %3, align 8
  %8 = call i32 @nla_total_size(i32 4)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %3, align 8
  %10 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i32, i32* @SEG6_LOCAL_SRH, align 4
  %16 = shl i32 1, %15
  %17 = sext i32 %16 to i64
  %18 = and i64 %14, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  %21 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %3, align 8
  %22 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  %27 = shl i32 %26, 3
  %28 = call i32 @nla_total_size(i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %20, %1
  %32 = load i64, i64* %4, align 8
  %33 = load i32, i32* @SEG6_LOCAL_TABLE, align 4
  %34 = shl i32 1, %33
  %35 = sext i32 %34 to i64
  %36 = and i64 %32, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = call i32 @nla_total_size(i32 4)
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %38, %31
  %43 = load i64, i64* %4, align 8
  %44 = load i32, i32* @SEG6_LOCAL_NH4, align 4
  %45 = shl i32 1, %44
  %46 = sext i32 %45 to i64
  %47 = and i64 %43, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = call i32 @nla_total_size(i32 4)
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %49, %42
  %54 = load i64, i64* %4, align 8
  %55 = load i32, i32* @SEG6_LOCAL_NH6, align 4
  %56 = shl i32 1, %55
  %57 = sext i32 %56 to i64
  %58 = and i64 %54, %57
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = call i32 @nla_total_size(i32 16)
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %60, %53
  %65 = load i64, i64* %4, align 8
  %66 = load i32, i32* @SEG6_LOCAL_IIF, align 4
  %67 = shl i32 1, %66
  %68 = sext i32 %67 to i64
  %69 = and i64 %65, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = call i32 @nla_total_size(i32 4)
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %71, %64
  %76 = load i64, i64* %4, align 8
  %77 = load i32, i32* @SEG6_LOCAL_OIF, align 4
  %78 = shl i32 1, %77
  %79 = sext i32 %78 to i64
  %80 = and i64 %76, %79
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = call i32 @nla_total_size(i32 4)
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %82, %75
  %87 = load i64, i64* %4, align 8
  %88 = load i32, i32* @SEG6_LOCAL_BPF, align 4
  %89 = shl i32 1, %88
  %90 = sext i32 %89 to i64
  %91 = and i64 %87, %90
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %86
  %94 = call i32 @nla_total_size(i32 4)
  %95 = load i32, i32* @MAX_PROG_NAME, align 4
  %96 = call i32 @nla_total_size(i32 %95)
  %97 = add nsw i32 %94, %96
  %98 = call i32 @nla_total_size(i32 4)
  %99 = add nsw i32 %97, %98
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %93, %86
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local %struct.seg6_local_lwt* @seg6_local_lwtunnel(%struct.lwtunnel_state*) #1

declare dso_local i32 @nla_total_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
