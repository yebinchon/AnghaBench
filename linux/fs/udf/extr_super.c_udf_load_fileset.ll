; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_load_fileset.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_load_fileset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fileSetDesc = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.kernel_lb_addr = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"file set\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Rootdir at block=%u, partition=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.fileSetDesc*, %struct.kernel_lb_addr*)* @udf_load_fileset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_load_fileset(%struct.super_block* %0, %struct.fileSetDesc* %1, %struct.kernel_lb_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.fileSetDesc*, align 8
  %7 = alloca %struct.kernel_lb_addr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.kernel_lb_addr, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.fileSetDesc* %1, %struct.fileSetDesc** %6, align 8
  store %struct.kernel_lb_addr* %2, %struct.kernel_lb_addr** %7, align 8
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = load %struct.fileSetDesc*, %struct.fileSetDesc** %6, align 8
  %12 = getelementptr inbounds %struct.fileSetDesc, %struct.fileSetDesc* %11, i32 0, i32 2
  %13 = call i32 @udf_verify_domain_identifier(%struct.super_block* %10, i32* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %43

18:                                               ; preds = %3
  %19 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %7, align 8
  %20 = load %struct.fileSetDesc*, %struct.fileSetDesc** %6, align 8
  %21 = getelementptr inbounds %struct.fileSetDesc, %struct.fileSetDesc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @lelb_to_cpu(i32 %23)
  %25 = bitcast %struct.kernel_lb_addr* %9 to i64*
  store i64 %24, i64* %25, align 4
  %26 = bitcast %struct.kernel_lb_addr* %19 to i8*
  %27 = bitcast %struct.kernel_lb_addr* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 8, i1 false)
  %28 = load %struct.fileSetDesc*, %struct.fileSetDesc** %6, align 8
  %29 = getelementptr inbounds %struct.fileSetDesc, %struct.fileSetDesc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le16_to_cpu(i32 %31)
  %33 = load %struct.super_block*, %struct.super_block** %5, align 8
  %34 = call %struct.TYPE_6__* @UDF_SB(%struct.super_block* %33)
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %7, align 8
  %37 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %7, align 8
  %40 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @udf_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %41)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %18, %16
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @udf_verify_domain_identifier(%struct.super_block*, i32*, i8*) #1

declare dso_local i64 @lelb_to_cpu(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.TYPE_6__* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @udf_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
