; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_verify_domain_identifier.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_verify_domain_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.regid = type { i32, i64, i32 }
%struct.domainEntityIDSuffix = type { i32 }

@UDF_ID_COMPLIANT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Not OSTA UDF compliant %s descriptor.\0A\00", align 1
@ENTITYID_FLAGS_DIRTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Possibly not OSTA UDF compliant %s descriptor.\0A\00", align 1
@ENTITYIDSUFFIX_FLAGS_HARDWRITEPROTECT = common dso_local global i32 0, align 4
@ENTITYIDSUFFIX_FLAGS_SOFTWRITEPROTECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"Descriptor for %s marked write protected. Forcing read only mount.\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@UDF_FLAG_RW_INCOMPAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.regid*, i8*)* @udf_verify_domain_identifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_verify_domain_identifier(%struct.super_block* %0, %struct.regid* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.regid*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.domainEntityIDSuffix*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.regid* %1, %struct.regid** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.regid*, %struct.regid** %6, align 8
  %10 = getelementptr inbounds %struct.regid, %struct.regid* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @UDF_ID_COMPLIANT, align 4
  %13 = load i32, i32* @UDF_ID_COMPLIANT, align 4
  %14 = call i32 @strlen(i32 %13)
  %15 = call i64 @memcmp(i32 %11, i32 %12, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.super_block*, %struct.super_block** %5, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @udf_warn(%struct.super_block* %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %63

21:                                               ; preds = %3
  %22 = load %struct.regid*, %struct.regid** %6, align 8
  %23 = getelementptr inbounds %struct.regid, %struct.regid* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ENTITYID_FLAGS_DIRTY, align 4
  %26 = shl i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load %struct.super_block*, %struct.super_block** %5, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @udf_warn(%struct.super_block* %30, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %63

33:                                               ; preds = %21
  %34 = load %struct.regid*, %struct.regid** %6, align 8
  %35 = getelementptr inbounds %struct.regid, %struct.regid* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.domainEntityIDSuffix*
  store %struct.domainEntityIDSuffix* %37, %struct.domainEntityIDSuffix** %8, align 8
  %38 = load %struct.domainEntityIDSuffix*, %struct.domainEntityIDSuffix** %8, align 8
  %39 = getelementptr inbounds %struct.domainEntityIDSuffix, %struct.domainEntityIDSuffix* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ENTITYIDSUFFIX_FLAGS_HARDWRITEPROTECT, align 4
  %42 = shl i32 1, %41
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %33
  %46 = load %struct.domainEntityIDSuffix*, %struct.domainEntityIDSuffix** %8, align 8
  %47 = getelementptr inbounds %struct.domainEntityIDSuffix, %struct.domainEntityIDSuffix* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ENTITYIDSUFFIX_FLAGS_SOFTWRITEPROTECT, align 4
  %50 = shl i32 1, %49
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %45, %33
  %54 = load %struct.super_block*, %struct.super_block** %5, align 8
  %55 = call i32 @sb_rdonly(%struct.super_block* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load %struct.super_block*, %struct.super_block** %5, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @udf_warn(%struct.super_block* %58, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %57, %53
  br label %63

62:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %74

63:                                               ; preds = %61, %29, %17
  %64 = load %struct.super_block*, %struct.super_block** %5, align 8
  %65 = call i32 @sb_rdonly(%struct.super_block* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @EACCES, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %74

70:                                               ; preds = %63
  %71 = load %struct.super_block*, %struct.super_block** %5, align 8
  %72 = load i32, i32* @UDF_FLAG_RW_INCOMPAT, align 4
  %73 = call i32 @UDF_SET_FLAG(%struct.super_block* %71, i32 %72)
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %70, %67, %62
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @udf_warn(%struct.super_block*, i8*, i8*) #1

declare dso_local i32 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @UDF_SET_FLAG(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
