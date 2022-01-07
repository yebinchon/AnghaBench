; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_feat.c_dccp_hdlr_min_cscov.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_feat.c_dccp_hdlr_min_cscov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dccp_sock = type { i64, i64 }

@.str = private unnamed_addr constant [41 x i8] c"CsCov %u too small, peer requires >= %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i64, i32)* @dccp_hdlr_min_cscov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_hdlr_min_cscov(%struct.sock* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dccp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %8)
  store %struct.dccp_sock* %9, %struct.dccp_sock** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %15 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %14, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  br label %40

16:                                               ; preds = %3
  %17 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %18 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %24 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %39

25:                                               ; preds = %16
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %28 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %26, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %33 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @DCCP_WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %34, i32 %36)
  br label %38

38:                                               ; preds = %31, %25
  br label %39

39:                                               ; preds = %38, %21
  br label %40

40:                                               ; preds = %39, %12
  ret i32 0
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @DCCP_WARN(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
