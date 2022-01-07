; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_recovery.c_get_cs_sqnum.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_recovery.c_get_cs_sqnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i64 }
%struct.ubifs_cs_node = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"at %d:%d\00", align 1
@UBIFS_CS_NODE_SZ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@SCANNED_A_NODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Not a valid node\00", align 1
@UBIFS_CS_NODE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Not a CS node, type is %d\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"CS node cmt_no %llu != current cmt_no %llu\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"commit start sqnum %llu\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"failed to get CS sqnum\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32, i32, i64*)* @get_cs_sqnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cs_sqnum(%struct.ubifs_info* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.ubifs_cs_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store %struct.ubifs_cs_node* null, %struct.ubifs_cs_node** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = load i32, i32* %8, align 4
  %16 = call i32 (i8*, i64, ...) @dbg_rcvry(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %14, i32 %15)
  %17 = load i32, i32* @UBIFS_CS_NODE_SZ, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.ubifs_cs_node* @kmalloc(i32 %17, i32 %18)
  store %struct.ubifs_cs_node* %19, %struct.ubifs_cs_node** %10, align 8
  %20 = load %struct.ubifs_cs_node*, %struct.ubifs_cs_node** %10, align 8
  %21 = icmp ne %struct.ubifs_cs_node* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %117

25:                                               ; preds = %4
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %27 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 %28, %29
  %31 = load i32, i32* @UBIFS_CS_NODE_SZ, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %108

34:                                               ; preds = %25
  %35 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.ubifs_cs_node*, %struct.ubifs_cs_node** %10, align 8
  %38 = bitcast %struct.ubifs_cs_node* %37 to i8*
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @UBIFS_CS_NODE_SZ, align 4
  %41 = call i32 @ubifs_leb_read(%struct.ubifs_info* %35, i32 %36, i8* %38, i32 %39, i32 %40, i32 0)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %34
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @EBADMSG, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %111

50:                                               ; preds = %44, %34
  %51 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %52 = load %struct.ubifs_cs_node*, %struct.ubifs_cs_node** %10, align 8
  %53 = load i32, i32* @UBIFS_CS_NODE_SZ, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @ubifs_scan_a_node(%struct.ubifs_info* %51, %struct.ubifs_cs_node* %52, i32 %53, i32 %54, i32 %55, i32 0)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @SCANNED_A_NODE, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %62 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %108

63:                                               ; preds = %50
  %64 = load %struct.ubifs_cs_node*, %struct.ubifs_cs_node** %10, align 8
  %65 = getelementptr inbounds %struct.ubifs_cs_node, %struct.ubifs_cs_node* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @UBIFS_CS_NODE, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %72 = load %struct.ubifs_cs_node*, %struct.ubifs_cs_node** %10, align 8
  %73 = getelementptr inbounds %struct.ubifs_cs_node, %struct.ubifs_cs_node* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %75)
  br label %108

77:                                               ; preds = %63
  %78 = load %struct.ubifs_cs_node*, %struct.ubifs_cs_node** %10, align 8
  %79 = getelementptr inbounds %struct.ubifs_cs_node, %struct.ubifs_cs_node* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @le64_to_cpu(i32 %80)
  %82 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %83 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %81, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %77
  %87 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %88 = load %struct.ubifs_cs_node*, %struct.ubifs_cs_node** %10, align 8
  %89 = getelementptr inbounds %struct.ubifs_cs_node, %struct.ubifs_cs_node* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @le64_to_cpu(i32 %90)
  %92 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %93 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %87, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %91, i64 %94)
  br label %108

96:                                               ; preds = %77
  %97 = load %struct.ubifs_cs_node*, %struct.ubifs_cs_node** %10, align 8
  %98 = getelementptr inbounds %struct.ubifs_cs_node, %struct.ubifs_cs_node* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @le64_to_cpu(i32 %100)
  %102 = load i64*, i64** %9, align 8
  store i64 %101, i64* %102, align 8
  %103 = load i64*, i64** %9, align 8
  %104 = load i64, i64* %103, align 8
  %105 = call i32 (i8*, i64, ...) @dbg_rcvry(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 %104)
  %106 = load %struct.ubifs_cs_node*, %struct.ubifs_cs_node** %10, align 8
  %107 = call i32 @kfree(%struct.ubifs_cs_node* %106)
  store i32 0, i32* %5, align 4
  br label %117

108:                                              ; preds = %86, %70, %60, %33
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %108, %49
  %112 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %113 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %112, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %114 = load %struct.ubifs_cs_node*, %struct.ubifs_cs_node** %10, align 8
  %115 = call i32 @kfree(%struct.ubifs_cs_node* %114)
  %116 = load i32, i32* %11, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %111, %96, %22
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @dbg_rcvry(i8*, i64, ...) #1

declare dso_local %struct.ubifs_cs_node* @kmalloc(i32, i32) #1

declare dso_local i32 @ubifs_leb_read(%struct.ubifs_info*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ubifs_scan_a_node(%struct.ubifs_info*, %struct.ubifs_cs_node*, i32, i32, i32, i32) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, ...) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @kfree(%struct.ubifs_cs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
