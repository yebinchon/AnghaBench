; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_output.c_dccp_sync_mss.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_output.c_dccp_sync_mss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.inet_connection_sock = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.dccp_sock = type { i32, i32, i64 }

@DCCPAV_MIN_OPTLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_sync_mss(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inet_connection_sock*, align 8
  %6 = alloca %struct.dccp_sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %9)
  store %struct.inet_connection_sock* %10, %struct.inet_connection_sock** %5, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %11)
  store %struct.dccp_sock* %12, %struct.dccp_sock** %6, align 8
  %13 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %14 = call i32 @dccp_determine_ccmps(%struct.dccp_sock* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @min(i32 %18, i32 %19)
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i32 [ %20, %17 ], [ %22, %21 ]
  store i32 %24, i32* %8, align 4
  %25 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %26 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %31 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = add i64 %33, 4
  %35 = add i64 %34, 4
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = sub i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %41 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 %42, 8
  %44 = add nsw i32 17, %43
  %45 = add nsw i32 %44, 6
  %46 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %47 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %23
  %51 = load i32, i32* @DCCPAV_MIN_OPTLEN, align 4
  br label %53

52:                                               ; preds = %23
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i32 [ %51, %50 ], [ 0, %52 ]
  %55 = add nsw i32 %45, %54
  %56 = call i64 @roundup(i32 %55, i32 4)
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = sub nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %63 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %66 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %8, align 4
  ret i32 %67
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @dccp_determine_ccmps(%struct.dccp_sock*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @roundup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
