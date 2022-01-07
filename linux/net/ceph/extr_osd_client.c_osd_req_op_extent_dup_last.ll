; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_osd_req_op_extent_dup_last.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_osd_req_op_extent_dup_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_request = type { i32, %struct.ceph_osd_req_op* }
%struct.ceph_osd_req_op = type { i64, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@CEPH_OSD_OP_WRITE = common dso_local global i64 0, align 8
@CEPH_OSD_OP_WRITEFULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @osd_req_op_extent_dup_last(%struct.ceph_osd_request* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ceph_osd_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ceph_osd_req_op*, align 8
  %8 = alloca %struct.ceph_osd_req_op*, align 8
  store %struct.ceph_osd_request* %0, %struct.ceph_osd_request** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = add i32 %9, 1
  %11 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %4, align 8
  %12 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp uge i32 %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %4, align 8
  %18 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %17, i32 0, i32 1
  %19 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %19, i64 %21
  store %struct.ceph_osd_req_op* %22, %struct.ceph_osd_req_op** %8, align 8
  %23 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = add i32 %24, 1
  %26 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %8, align 8
  %27 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %8, align 8
  %30 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.ceph_osd_req_op* @_osd_req_op_init(%struct.ceph_osd_request* %23, i32 %25, i64 %28, i32 %31)
  store %struct.ceph_osd_req_op* %32, %struct.ceph_osd_req_op** %7, align 8
  %33 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %8, align 8
  %34 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %7, align 8
  %37 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %8, align 8
  %39 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %7, align 8
  %42 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %7, align 8
  %44 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %43, i32 0, i32 2
  %45 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %8, align 8
  %46 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %45, i32 0, i32 2
  %47 = bitcast %struct.TYPE_2__* %44 to i8*
  %48 = bitcast %struct.TYPE_2__* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 8, i1 false)
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %7, align 8
  %51 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %49
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %52, align 4
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %7, align 8
  %59 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = sub nsw i64 %62, %57
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 4
  %65 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %7, align 8
  %66 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @CEPH_OSD_OP_WRITE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %3
  %71 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %7, align 8
  %72 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @CEPH_OSD_OP_WRITEFULL, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %70, %3
  %77 = load i64, i64* %6, align 8
  %78 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %7, align 8
  %79 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = sub nsw i64 %81, %77
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %79, align 8
  br label %84

84:                                               ; preds = %76, %70
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.ceph_osd_req_op* @_osd_req_op_init(%struct.ceph_osd_request*, i32, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
