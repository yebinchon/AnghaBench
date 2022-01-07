; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_security_fs_use.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_security_fs_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.selinux_state = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.sidtab*, %struct.policydb }
%struct.sidtab = type { i32 }
%struct.policydb = type { %struct.ocontext** }
%struct.ocontext = type { i64*, i32*, %struct.TYPE_7__, %struct.ocontext*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.super_block = type { %struct.TYPE_5__*, %struct.superblock_security_struct* }
%struct.TYPE_5__ = type { i8* }
%struct.superblock_security_struct = type { i32, i64 }

@OCON_FSUSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@SECCLASS_DIR = common dso_local global i32 0, align 4
@SECURITY_FS_USE_NONE = common dso_local global i32 0, align 4
@SECURITY_FS_USE_GENFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_fs_use(%struct.selinux_state* %0, %struct.super_block* %1) #0 {
  %3 = alloca %struct.selinux_state*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.policydb*, align 8
  %6 = alloca %struct.sidtab*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocontext*, align 8
  %9 = alloca %struct.superblock_security_struct*, align 8
  %10 = alloca i8*, align 8
  store %struct.selinux_state* %0, %struct.selinux_state** %3, align 8
  store %struct.super_block* %1, %struct.super_block** %4, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  %12 = getelementptr inbounds %struct.super_block, %struct.super_block* %11, i32 0, i32 1
  %13 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %12, align 8
  store %struct.superblock_security_struct* %13, %struct.superblock_security_struct** %9, align 8
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %10, align 8
  %19 = load %struct.selinux_state*, %struct.selinux_state** %3, align 8
  %20 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = call i32 @read_lock(i32* %22)
  %24 = load %struct.selinux_state*, %struct.selinux_state** %3, align 8
  %25 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  store %struct.policydb* %27, %struct.policydb** %5, align 8
  %28 = load %struct.selinux_state*, %struct.selinux_state** %3, align 8
  %29 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load %struct.sidtab*, %struct.sidtab** %31, align 8
  store %struct.sidtab* %32, %struct.sidtab** %6, align 8
  %33 = load %struct.policydb*, %struct.policydb** %5, align 8
  %34 = getelementptr inbounds %struct.policydb, %struct.policydb* %33, i32 0, i32 0
  %35 = load %struct.ocontext**, %struct.ocontext*** %34, align 8
  %36 = load i64, i64* @OCON_FSUSE, align 8
  %37 = getelementptr inbounds %struct.ocontext*, %struct.ocontext** %35, i64 %36
  %38 = load %struct.ocontext*, %struct.ocontext** %37, align 8
  store %struct.ocontext* %38, %struct.ocontext** %8, align 8
  br label %39

39:                                               ; preds = %51, %2
  %40 = load %struct.ocontext*, %struct.ocontext** %8, align 8
  %41 = icmp ne %struct.ocontext* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load i8*, i8** %10, align 8
  %44 = load %struct.ocontext*, %struct.ocontext** %8, align 8
  %45 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @strcmp(i8* %43, i32 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %55

51:                                               ; preds = %42
  %52 = load %struct.ocontext*, %struct.ocontext** %8, align 8
  %53 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %52, i32 0, i32 3
  %54 = load %struct.ocontext*, %struct.ocontext** %53, align 8
  store %struct.ocontext* %54, %struct.ocontext** %8, align 8
  br label %39

55:                                               ; preds = %50, %39
  %56 = load %struct.ocontext*, %struct.ocontext** %8, align 8
  %57 = icmp ne %struct.ocontext* %56, null
  br i1 %57, label %58, label %94

58:                                               ; preds = %55
  %59 = load %struct.ocontext*, %struct.ocontext** %8, align 8
  %60 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %9, align 8
  %64 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ocontext*, %struct.ocontext** %8, align 8
  %66 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %86, label %71

71:                                               ; preds = %58
  %72 = load %struct.sidtab*, %struct.sidtab** %6, align 8
  %73 = load %struct.ocontext*, %struct.ocontext** %8, align 8
  %74 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load %struct.ocontext*, %struct.ocontext** %8, align 8
  %78 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = call i32 @sidtab_context_to_sid(%struct.sidtab* %72, i32* %76, i64* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  br label %113

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %85, %58
  %87 = load %struct.ocontext*, %struct.ocontext** %8, align 8
  %88 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %9, align 8
  %93 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  br label %112

94:                                               ; preds = %55
  %95 = load %struct.selinux_state*, %struct.selinux_state** %3, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = load i32, i32* @SECCLASS_DIR, align 4
  %98 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %9, align 8
  %99 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %98, i32 0, i32 1
  %100 = call i32 @__security_genfs_sid(%struct.selinux_state* %95, i8* %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %97, i64* %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %94
  %104 = load i32, i32* @SECURITY_FS_USE_NONE, align 4
  %105 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %9, align 8
  %106 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  store i32 0, i32* %7, align 4
  br label %111

107:                                              ; preds = %94
  %108 = load i32, i32* @SECURITY_FS_USE_GENFS, align 4
  %109 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %9, align 8
  %110 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %107, %103
  br label %112

112:                                              ; preds = %111, %86
  br label %113

113:                                              ; preds = %112, %84
  %114 = load %struct.selinux_state*, %struct.selinux_state** %3, align 8
  %115 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %114, i32 0, i32 0
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = call i32 @read_unlock(i32* %117)
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @sidtab_context_to_sid(%struct.sidtab*, i32*, i64*) #1

declare dso_local i32 @__security_genfs_sid(%struct.selinux_state*, i8*, i8*, i32, i64*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
