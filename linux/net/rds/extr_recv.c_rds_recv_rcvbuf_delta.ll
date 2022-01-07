; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_recv.c_rds_recv_rcvbuf_delta.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_recv.c_rds_recv_rcvbuf_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_sock = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sock = type { i32 }
%struct.rds_cong_map = type { i32 }

@s_recv_bytes_added_to_socket = common dso_local global i32 0, align 4
@s_recv_bytes_removed_from_socket = common dso_local global i32 0, align 4
@RDS_TRANS_LOOP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"rs %p (%pI6c:%u) recv bytes %d buf %d now_cong %d delta %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_sock*, %struct.sock*, %struct.rds_cong_map*, i32, i32)* @rds_recv_rcvbuf_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_recv_rcvbuf_delta(%struct.rds_sock* %0, %struct.sock* %1, %struct.rds_cong_map* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.rds_sock*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.rds_cong_map*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rds_sock* %0, %struct.rds_sock** %6, align 8
  store %struct.sock* %1, %struct.sock** %7, align 8
  store %struct.rds_cong_map* %2, %struct.rds_cong_map** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  br label %101

15:                                               ; preds = %5
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %18 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load i32, i32* @s_recv_bytes_added_to_socket, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @rds_stats_add(i32 %24, i32 %25)
  br label %32

27:                                               ; preds = %15
  %28 = load i32, i32* @s_recv_bytes_removed_from_socket, align 4
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 0, %29
  %31 = call i32 @rds_stats_add(i32 %28, i32 %30)
  br label %32

32:                                               ; preds = %27, %23
  %33 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %34 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %33, i32 0, i32 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RDS_TRANS_LOOP, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %101

41:                                               ; preds = %32
  %42 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %43 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %46 = call i32 @rds_sk_rcvbuf(%struct.rds_sock* %45)
  %47 = icmp sgt i32 %44, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %11, align 4
  %49 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %50 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %51 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %50, i32 0, i32 3
  %52 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %53 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ntohs(i32 %54)
  %56 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %57 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %60 = call i32 @rds_sk_rcvbuf(%struct.rds_sock* %59)
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @rdsdebug(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), %struct.rds_sock* %49, i32* %51, i32 %55, i32 %58, i32 %60, i32 %61, i32 %62)
  %64 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %65 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %41
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %73 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %72, i32 0, i32 1
  store i32 1, i32* %73, align 4
  %74 = load %struct.rds_cong_map*, %struct.rds_cong_map** %8, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @rds_cong_set_bit(%struct.rds_cong_map* %74, i32 %75)
  %77 = load %struct.rds_cong_map*, %struct.rds_cong_map** %8, align 8
  %78 = call i32 @rds_cong_queue_updates(%struct.rds_cong_map* %77)
  br label %101

79:                                               ; preds = %68, %41
  %80 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %81 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %79
  %85 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %86 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %89 = call i32 @rds_sk_rcvbuf(%struct.rds_sock* %88)
  %90 = sdiv i32 %89, 2
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %84
  %93 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %94 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %93, i32 0, i32 1
  store i32 0, i32* %94, align 4
  %95 = load %struct.rds_cong_map*, %struct.rds_cong_map** %8, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @rds_cong_clear_bit(%struct.rds_cong_map* %95, i32 %96)
  %98 = load %struct.rds_cong_map*, %struct.rds_cong_map** %8, align 8
  %99 = call i32 @rds_cong_queue_updates(%struct.rds_cong_map* %98)
  br label %100

100:                                              ; preds = %92, %84, %79
  br label %101

101:                                              ; preds = %14, %40, %100, %71
  ret void
}

declare dso_local i32 @rds_stats_add(i32, i32) #1

declare dso_local i32 @rds_sk_rcvbuf(%struct.rds_sock*) #1

declare dso_local i32 @rdsdebug(i8*, %struct.rds_sock*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @rds_cong_set_bit(%struct.rds_cong_map*, i32) #1

declare dso_local i32 @rds_cong_queue_updates(%struct.rds_cong_map*) #1

declare dso_local i32 @rds_cong_clear_bit(%struct.rds_cong_map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
