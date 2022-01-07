; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_block_find.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_block_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ext4_xattr_info = type { i32, i32, i64, i32 }
%struct.ext4_xattr_block_find = type { %struct.TYPE_11__, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32, i64, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i64, i64, i32 }
%struct.TYPE_13__ = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"name=%d.%s, value=%p, value_len=%ld\00", align 1
@REQ_PRIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"b_count=%d, refcount=%d\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ext4_xattr_info*, %struct.ext4_xattr_block_find*)* @ext4_xattr_block_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_block_find(%struct.inode* %0, %struct.ext4_xattr_info* %1, %struct.ext4_xattr_block_find* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ext4_xattr_info*, align 8
  %7 = alloca %struct.ext4_xattr_block_find*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ext4_xattr_info* %1, %struct.ext4_xattr_info** %6, align 8
  store %struct.ext4_xattr_block_find* %2, %struct.ext4_xattr_block_find** %7, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load %struct.super_block*, %struct.super_block** %11, align 8
  store %struct.super_block* %12, %struct.super_block** %8, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = load %struct.ext4_xattr_info*, %struct.ext4_xattr_info** %6, align 8
  %15 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ext4_xattr_info*, %struct.ext4_xattr_info** %6, align 8
  %18 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ext4_xattr_info*, %struct.ext4_xattr_info** %6, align 8
  %21 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ext4_xattr_info*, %struct.ext4_xattr_info** %6, align 8
  %24 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @ea_idebug(%struct.inode* %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19, i32 %22, i64 %25)
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = call %struct.TYPE_13__* @EXT4_I(%struct.inode* %27)
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %143

32:                                               ; preds = %3
  %33 = load %struct.super_block*, %struct.super_block** %8, align 8
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = call %struct.TYPE_13__* @EXT4_I(%struct.inode* %34)
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @REQ_PRIO, align 4
  %39 = call %struct.TYPE_12__* @ext4_sb_bread(%struct.super_block* %33, i64 %37, i32 %38)
  %40 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %7, align 8
  %41 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %40, i32 0, i32 1
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %41, align 8
  %42 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %7, align 8
  %43 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %42, i32 0, i32 1
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = call i64 @IS_ERR(%struct.TYPE_12__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %32
  %48 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %7, align 8
  %49 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %48, i32 0, i32 1
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = call i32 @PTR_ERR(%struct.TYPE_12__* %50)
  store i32 %51, i32* %4, align 4
  br label %144

52:                                               ; preds = %32
  %53 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %7, align 8
  %54 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %53, i32 0, i32 1
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %7, align 8
  %57 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %56, i32 0, i32 1
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  %60 = call i32 @atomic_read(i32* %59)
  %61 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %7, align 8
  %62 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %61, i32 0, i32 1
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = call %struct.TYPE_14__* @BHDR(%struct.TYPE_12__* %63)
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le32_to_cpu(i32 %66)
  %68 = call i32 @ea_bdebug(%struct.TYPE_12__* %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %67)
  %69 = load %struct.inode*, %struct.inode** %5, align 8
  %70 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %7, align 8
  %71 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %70, i32 0, i32 1
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = call i32 @ext4_xattr_check_block(%struct.inode* %69, %struct.TYPE_12__* %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %52
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %4, align 4
  br label %144

78:                                               ; preds = %52
  %79 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %7, align 8
  %80 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %79, i32 0, i32 1
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = call %struct.TYPE_14__* @BHDR(%struct.TYPE_12__* %81)
  %83 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %7, align 8
  %84 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 4
  store %struct.TYPE_14__* %82, %struct.TYPE_14__** %85, align 8
  %86 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %7, align 8
  %87 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %86, i32 0, i32 1
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = call i32 @BFIRST(%struct.TYPE_12__* %88)
  %90 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %7, align 8
  %91 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 3
  store i32 %89, i32* %92, align 4
  %93 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %7, align 8
  %94 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %93, i32 0, i32 1
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %7, align 8
  %99 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %98, i32 0, i32 1
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %97, %102
  %104 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %7, align 8
  %105 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  store i64 %103, i64* %106, align 8
  %107 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %7, align 8
  %108 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %7, align 8
  %112 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 2
  store i32 %110, i32* %113, align 8
  %114 = load %struct.inode*, %struct.inode** %5, align 8
  %115 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %7, align 8
  %116 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 2
  %118 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %7, align 8
  %119 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.ext4_xattr_info*, %struct.ext4_xattr_info** %6, align 8
  %123 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ext4_xattr_info*, %struct.ext4_xattr_info** %6, align 8
  %126 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @xattr_find_entry(%struct.inode* %114, i32* %117, i64 %121, i32 %124, i32 %127, i32 1)
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %78
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* @ENODATA, align 4
  %134 = sub nsw i32 0, %133
  %135 = icmp ne i32 %132, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %4, align 4
  br label %144

138:                                              ; preds = %131, %78
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %7, align 8
  %141 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  store i32 %139, i32* %142, align 8
  br label %143

143:                                              ; preds = %138, %3
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %143, %136, %76, %47
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i32 @ea_idebug(%struct.inode*, i8*, i32, i32, i32, i64) #1

declare dso_local %struct.TYPE_13__* @EXT4_I(%struct.inode*) #1

declare dso_local %struct.TYPE_12__* @ext4_sb_bread(%struct.super_block*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_12__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_12__*) #1

declare dso_local i32 @ea_bdebug(%struct.TYPE_12__*, i8*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_14__* @BHDR(%struct.TYPE_12__*) #1

declare dso_local i32 @ext4_xattr_check_block(%struct.inode*, %struct.TYPE_12__*) #1

declare dso_local i32 @BFIRST(%struct.TYPE_12__*) #1

declare dso_local i32 @xattr_find_entry(%struct.inode*, i32*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
