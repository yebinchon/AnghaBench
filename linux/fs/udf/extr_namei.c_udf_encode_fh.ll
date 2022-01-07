; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_namei.c_udf_encode_fh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_namei.c_udf_encode_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.kernel_lb_addr = type { i64, i32 }
%struct.fid = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32, i32, i64, i32 }
%struct.TYPE_4__ = type { %struct.kernel_lb_addr }

@FILEID_UDF_WITHOUT_PARENT = common dso_local global i32 0, align 4
@FILEID_INVALID = common dso_local global i32 0, align 4
@FILEID_UDF_WITH_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, i32*, %struct.inode*)* @udf_encode_fh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_encode_fh(%struct.inode* %0, i32* %1, i32* %2, %struct.inode* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.kernel_lb_addr, align 8
  %12 = alloca %struct.fid*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.inode* %3, %struct.inode** %9, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = call %struct.TYPE_4__* @UDF_I(%struct.inode* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = bitcast %struct.kernel_lb_addr* %11 to i8*
  %20 = bitcast %struct.kernel_lb_addr* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 16, i1 false)
  %21 = load i32*, i32** %7, align 8
  %22 = bitcast i32* %21 to %struct.fid*
  store %struct.fid* %22, %struct.fid** %12, align 8
  %23 = load i32, i32* @FILEID_UDF_WITHOUT_PARENT, align 4
  store i32 %23, i32* %13, align 4
  %24 = load %struct.inode*, %struct.inode** %9, align 8
  %25 = icmp ne %struct.inode* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 5
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32*, i32** %8, align 8
  store i32 5, i32* %30, align 4
  %31 = load i32, i32* @FILEID_INVALID, align 4
  store i32 %31, i32* %5, align 4
  br label %88

32:                                               ; preds = %26, %4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 3
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32*, i32** %8, align 8
  store i32 3, i32* %36, align 4
  %37 = load i32, i32* @FILEID_INVALID, align 4
  store i32 %37, i32* %5, align 4
  br label %88

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38
  %40 = load i32*, i32** %8, align 8
  store i32 3, i32* %40, align 4
  %41 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %11, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.fid*, %struct.fid** %12, align 8
  %44 = getelementptr inbounds %struct.fid, %struct.fid* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 5
  store i32 %42, i32* %45, align 8
  %46 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %11, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.fid*, %struct.fid** %12, align 8
  %49 = getelementptr inbounds %struct.fid, %struct.fid* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 4
  store i64 %47, i64* %50, align 8
  %51 = load %struct.fid*, %struct.fid** %12, align 8
  %52 = getelementptr inbounds %struct.fid, %struct.fid* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.inode*, %struct.inode** %6, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.fid*, %struct.fid** %12, align 8
  %58 = getelementptr inbounds %struct.fid, %struct.fid* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  store i32 %56, i32* %59, align 4
  %60 = load %struct.inode*, %struct.inode** %9, align 8
  %61 = icmp ne %struct.inode* %60, null
  br i1 %61, label %62, label %86

62:                                               ; preds = %39
  %63 = load %struct.inode*, %struct.inode** %9, align 8
  %64 = call %struct.TYPE_4__* @UDF_I(%struct.inode* %63)
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = bitcast %struct.kernel_lb_addr* %11 to i8*
  %67 = bitcast %struct.kernel_lb_addr* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 16, i1 false)
  %68 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %11, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.fid*, %struct.fid** %12, align 8
  %71 = getelementptr inbounds %struct.fid, %struct.fid* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  store i32 %69, i32* %72, align 8
  %73 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %11, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.fid*, %struct.fid** %12, align 8
  %76 = getelementptr inbounds %struct.fid, %struct.fid* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  store i64 %74, i64* %77, align 8
  %78 = load %struct.inode*, %struct.inode** %6, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.fid*, %struct.fid** %12, align 8
  %82 = getelementptr inbounds %struct.fid, %struct.fid* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  %84 = load i32*, i32** %8, align 8
  store i32 5, i32* %84, align 4
  %85 = load i32, i32* @FILEID_UDF_WITH_PARENT, align 4
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %62, %39
  %87 = load i32, i32* %13, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %86, %35, %29
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local %struct.TYPE_4__* @UDF_I(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
