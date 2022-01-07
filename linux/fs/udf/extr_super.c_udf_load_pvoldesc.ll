; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_load_pvoldesc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_load_pvoldesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.primaryVolDesc = type { i32, i32, %struct.timestamp }
%struct.timestamp = type { i32, i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i64 }
%struct.TYPE_2__ = type { i64*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@TAG_IDENT_PVD = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"recording time %04u/%02u/%02u %02u:%02u (%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"InvalidName\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"incorrect volume identification, setting to 'InvalidName'\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"volIdent[] = '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"volSetIdent[] = '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @udf_load_pvoldesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_load_pvoldesc(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.primaryVolDesc*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.timestamp*, align 8
  %12 = alloca %struct.timestamp, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @GFP_NOFS, align 4
  %16 = call i64* @kmalloc(i32 128, i32 %15)
  store i64* %16, i64** %7, align 8
  %17 = load i64*, i64** %7, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %129

22:                                               ; preds = %2
  %23 = load %struct.super_block*, %struct.super_block** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call %struct.buffer_head* @udf_read_tagged(%struct.super_block* %23, i32 %24, i32 %25, i64* %9)
  store %struct.buffer_head* %26, %struct.buffer_head** %8, align 8
  %27 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %28 = icmp ne %struct.buffer_head* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @EAGAIN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %10, align 4
  br label %125

32:                                               ; preds = %22
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @TAG_IDENT_PVD, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %10, align 4
  br label %122

39:                                               ; preds = %32
  %40 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %41 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.primaryVolDesc*
  store %struct.primaryVolDesc* %43, %struct.primaryVolDesc** %6, align 8
  %44 = load %struct.super_block*, %struct.super_block** %4, align 8
  %45 = call %struct.TYPE_2__* @UDF_SB(%struct.super_block* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load %struct.primaryVolDesc*, %struct.primaryVolDesc** %6, align 8
  %48 = getelementptr inbounds %struct.primaryVolDesc, %struct.primaryVolDesc* %47, i32 0, i32 2
  %49 = bitcast %struct.timestamp* %12 to i8*
  %50 = bitcast %struct.timestamp* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 4 %50, i64 24, i1 false)
  %51 = call i32 @udf_disk_stamp_to_time(i32* %46, %struct.timestamp* byval(%struct.timestamp) align 8 %12)
  %52 = load %struct.primaryVolDesc*, %struct.primaryVolDesc** %6, align 8
  %53 = getelementptr inbounds %struct.primaryVolDesc, %struct.primaryVolDesc* %52, i32 0, i32 2
  store %struct.timestamp* %53, %struct.timestamp** %11, align 8
  %54 = load %struct.timestamp*, %struct.timestamp** %11, align 8
  %55 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le16_to_cpu(i32 %56)
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i64*
  %60 = load %struct.timestamp*, %struct.timestamp** %11, align 8
  %61 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.timestamp*, %struct.timestamp** %11, align 8
  %64 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.timestamp*, %struct.timestamp** %11, align 8
  %67 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.timestamp*, %struct.timestamp** %11, align 8
  %70 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.timestamp*, %struct.timestamp** %11, align 8
  %73 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le16_to_cpu(i32 %74)
  %76 = call i32 (i8*, i64*, ...) @udf_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64* %59, i32 %62, i32 %65, i32 %68, i32 %71, i32 %75)
  %77 = load %struct.super_block*, %struct.super_block** %4, align 8
  %78 = load i64*, i64** %7, align 8
  %79 = load %struct.primaryVolDesc*, %struct.primaryVolDesc** %6, align 8
  %80 = getelementptr inbounds %struct.primaryVolDesc, %struct.primaryVolDesc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @udf_dstrCS0toChar(%struct.super_block* %77, i64* %78, i32 31, i32 %81, i32 32)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %39
  %86 = load %struct.super_block*, %struct.super_block** %4, align 8
  %87 = call %struct.TYPE_2__* @UDF_SB(%struct.super_block* %86)
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = call i32 @strcpy(i64* %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %91 = call i32 @pr_warn(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  br label %100

92:                                               ; preds = %39
  %93 = load %struct.super_block*, %struct.super_block** %4, align 8
  %94 = call %struct.TYPE_2__* @UDF_SB(%struct.super_block* %93)
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load i64*, i64** %7, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @strncpy(i64* %96, i64* %97, i32 %98)
  br label %100

100:                                              ; preds = %92, %85
  %101 = load %struct.super_block*, %struct.super_block** %4, align 8
  %102 = call %struct.TYPE_2__* @UDF_SB(%struct.super_block* %101)
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i64*, i64** %103, align 8
  %105 = call i32 (i8*, i64*, ...) @udf_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64* %104)
  %106 = load %struct.super_block*, %struct.super_block** %4, align 8
  %107 = load i64*, i64** %7, align 8
  %108 = load %struct.primaryVolDesc*, %struct.primaryVolDesc** %6, align 8
  %109 = getelementptr inbounds %struct.primaryVolDesc, %struct.primaryVolDesc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @udf_dstrCS0toChar(%struct.super_block* %106, i64* %107, i32 127, i32 %110, i32 128)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %100
  store i32 0, i32* %10, align 4
  br label %122

115:                                              ; preds = %100
  %116 = load i64*, i64** %7, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  store i64 0, i64* %119, align 8
  %120 = load i64*, i64** %7, align 8
  %121 = call i32 (i8*, i64*, ...) @udf_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i64* %120)
  store i32 0, i32* %10, align 4
  br label %122

122:                                              ; preds = %115, %114, %36
  %123 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %124 = call i32 @brelse(%struct.buffer_head* %123)
  br label %125

125:                                              ; preds = %122, %29
  %126 = load i64*, i64** %7, align 8
  %127 = call i32 @kfree(i64* %126)
  %128 = load i32, i32* %10, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %125, %19
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i64* @kmalloc(i32, i32) #1

declare dso_local %struct.buffer_head* @udf_read_tagged(%struct.super_block*, i32, i32, i64*) #1

declare dso_local i32 @udf_disk_stamp_to_time(i32*, %struct.timestamp* byval(%struct.timestamp) align 8) #1

declare dso_local %struct.TYPE_2__* @UDF_SB(%struct.super_block*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @udf_debug(i8*, i64*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @udf_dstrCS0toChar(%struct.super_block*, i64*, i32, i32, i32) #1

declare dso_local i32 @strcpy(i64*, i8*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @strncpy(i64*, i64*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
