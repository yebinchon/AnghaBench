; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_xattr.c_save_xattr_ref.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_xattr.c_save_xattr_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32 }
%struct.jffs2_xattr_ref = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.jffs2_raw_xref = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@JFFS2_MAGIC_BITMASK = common dso_local global i32 0, align 4
@JFFS2_NODETYPE_XREF = common dso_local global i32 0, align 4
@XREF_DELETE_MARKER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"jffs2_flash_write() returned %d, request=%zu, retlen=%zu, at %#08x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@REF_OBSOLETE = common dso_local global i32 0, align 4
@REF_PRISTINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"success on saving xref (ino=%u, xid=%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jffs2_sb_info*, %struct.jffs2_xattr_ref*)* @save_xattr_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_xattr_ref(%struct.jffs2_sb_info* %0, %struct.jffs2_xattr_ref* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jffs2_sb_info*, align 8
  %5 = alloca %struct.jffs2_xattr_ref*, align 8
  %6 = alloca %struct.jffs2_raw_xref, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %4, align 8
  store %struct.jffs2_xattr_ref* %1, %struct.jffs2_xattr_ref** %5, align 8
  %11 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %12 = call i32 @write_ofs(%struct.jffs2_sb_info* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @JFFS2_MAGIC_BITMASK, align 4
  %14 = call i8* @cpu_to_je16(i32 %13)
  %15 = getelementptr inbounds %struct.jffs2_raw_xref, %struct.jffs2_raw_xref* %6, i32 0, i32 7
  store i8* %14, i8** %15, align 8
  %16 = load i32, i32* @JFFS2_NODETYPE_XREF, align 4
  %17 = call i8* @cpu_to_je16(i32 %16)
  %18 = getelementptr inbounds %struct.jffs2_raw_xref, %struct.jffs2_raw_xref* %6, i32 0, i32 6
  store i8* %17, i8** %18, align 8
  %19 = call i32 @PAD(i32 64)
  %20 = call i8* @cpu_to_je32(i32 %19)
  %21 = getelementptr inbounds %struct.jffs2_raw_xref, %struct.jffs2_raw_xref* %6, i32 0, i32 5
  store i8* %20, i8** %21, align 8
  %22 = call i32 @crc32(i32 0, %struct.jffs2_raw_xref* %6, i32 0)
  %23 = call i8* @cpu_to_je32(i32 %22)
  %24 = getelementptr inbounds %struct.jffs2_raw_xref, %struct.jffs2_raw_xref* %6, i32 0, i32 4
  store i8* %23, i8** %24, align 8
  %25 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %26 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 2
  store i32 %28, i32* %26, align 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %5, align 8
  %30 = call i64 @is_xattr_ref_dead(%struct.jffs2_xattr_ref* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %2
  %33 = load i32, i32* @XREF_DELETE_MARKER, align 4
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %5, align 8
  %37 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i8* @cpu_to_je32(i32 %38)
  %40 = getelementptr inbounds %struct.jffs2_raw_xref, %struct.jffs2_raw_xref* %6, i32 0, i32 3
  store i8* %39, i8** %40, align 8
  %41 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %5, align 8
  %42 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @cpu_to_je32(i32 %43)
  %45 = getelementptr inbounds %struct.jffs2_raw_xref, %struct.jffs2_raw_xref* %6, i32 0, i32 2
  store i8* %44, i8** %45, align 8
  br label %61

46:                                               ; preds = %2
  %47 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %5, align 8
  %48 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %47, i32 0, i32 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @cpu_to_je32(i32 %51)
  %53 = getelementptr inbounds %struct.jffs2_raw_xref, %struct.jffs2_raw_xref* %6, i32 0, i32 3
  store i8* %52, i8** %53, align 8
  %54 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %5, align 8
  %55 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %54, i32 0, i32 3
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @cpu_to_je32(i32 %58)
  %60 = getelementptr inbounds %struct.jffs2_raw_xref, %struct.jffs2_raw_xref* %6, i32 0, i32 2
  store i8* %59, i8** %60, align 8
  br label %61

61:                                               ; preds = %46, %32
  %62 = load i32, i32* %8, align 4
  %63 = call i8* @cpu_to_je32(i32 %62)
  %64 = getelementptr inbounds %struct.jffs2_raw_xref, %struct.jffs2_raw_xref* %6, i32 0, i32 1
  store i8* %63, i8** %64, align 8
  %65 = call i32 @crc32(i32 0, %struct.jffs2_raw_xref* %6, i32 60)
  %66 = call i8* @cpu_to_je32(i32 %65)
  %67 = getelementptr inbounds %struct.jffs2_raw_xref, %struct.jffs2_raw_xref* %6, i32 0, i32 0
  store i8* %66, i8** %67, align 8
  %68 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %69 = load i32, i32* %9, align 4
  %70 = bitcast %struct.jffs2_raw_xref* %6 to i8*
  %71 = call i32 @jffs2_flash_write(%struct.jffs2_sb_info* %68, i32 %69, i32 64, i64* %7, i8* %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %61
  %75 = load i64, i64* %7, align 8
  %76 = icmp ne i64 64, %75
  br i1 %76, label %77, label %102

77:                                               ; preds = %74, %61
  %78 = load i32, i32* %10, align 4
  %79 = load i64, i64* %7, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @JFFS2_WARNING(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %78, i32 64, i64 %79, i32 %80)
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i32, i32* %10, align 4
  br label %89

86:                                               ; preds = %77
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  br label %89

89:                                               ; preds = %86, %84
  %90 = phi i32 [ %85, %84 ], [ %88, %86 ]
  store i32 %90, i32* %10, align 4
  %91 = load i64, i64* %7, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @REF_OBSOLETE, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @PAD(i32 64)
  %99 = call i32 @jffs2_add_physical_node_ref(%struct.jffs2_sb_info* %94, i32 %97, i32 %98, i8* null)
  br label %100

100:                                              ; preds = %93, %89
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %3, align 4
  br label %125

102:                                              ; preds = %74
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %5, align 8
  %105 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @REF_PRISTINE, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @PAD(i32 64)
  %111 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %5, align 8
  %112 = bitcast %struct.jffs2_xattr_ref* %111 to i8*
  %113 = call i32 @jffs2_add_physical_node_ref(%struct.jffs2_sb_info* %106, i32 %109, i32 %110, i8* %112)
  %114 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %5, align 8
  %115 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %114, i32 0, i32 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %5, align 8
  %120 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %119, i32 0, i32 3
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @dbg_xattr(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %118, i32 %123)
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %102, %100
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @write_ofs(%struct.jffs2_sb_info*) #1

declare dso_local i8* @cpu_to_je16(i32) #1

declare dso_local i8* @cpu_to_je32(i32) #1

declare dso_local i32 @PAD(i32) #1

declare dso_local i32 @crc32(i32, %struct.jffs2_raw_xref*, i32) #1

declare dso_local i64 @is_xattr_ref_dead(%struct.jffs2_xattr_ref*) #1

declare dso_local i32 @jffs2_flash_write(%struct.jffs2_sb_info*, i32, i32, i64*, i8*) #1

declare dso_local i32 @JFFS2_WARNING(i8*, i32, i32, i64, i32) #1

declare dso_local i32 @jffs2_add_physical_node_ref(%struct.jffs2_sb_info*, i32, i32, i8*) #1

declare dso_local i32 @dbg_xattr(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
