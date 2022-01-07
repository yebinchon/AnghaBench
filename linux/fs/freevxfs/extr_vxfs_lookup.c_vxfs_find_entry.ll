; ModuleID = '/home/carl/AnghaBench/linux/fs/freevxfs/extr_vxfs_lookup.c_vxfs_find_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/freevxfs/extr_vxfs_lookup.c_vxfs_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxfs_direct = type { i32, i32, i32, i32 }
%struct.inode = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dentry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.page = type { i32 }
%struct.vxfs_sb_info = type { i32 }
%struct.vxfs_dirblk = type { i32 }

@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vxfs_direct* (%struct.inode*, %struct.dentry*, %struct.page**)* @vxfs_find_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vxfs_direct* @vxfs_find_entry(%struct.inode* %0, %struct.dentry* %1, %struct.page** %2) #0 {
  %4 = alloca %struct.vxfs_direct*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.page**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.vxfs_direct*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.vxfs_sb_info*, align 8
  %15 = alloca %struct.page*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.vxfs_direct*, align 8
  %19 = alloca %struct.vxfs_dirblk*, align 8
  %20 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.page** %2, %struct.page*** %7, align 8
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.dentry*, %struct.dentry** %6, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %9, align 8
  %30 = load %struct.dentry*, %struct.dentry** %6, align 8
  %31 = getelementptr inbounds %struct.dentry, %struct.dentry* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %10, align 4
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @VXFS_DIRROUND(i32 %36)
  store i32 %37, i32* %11, align 4
  store %struct.vxfs_direct* null, %struct.vxfs_direct** %12, align 8
  store i32 0, i32* %13, align 4
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = call %struct.vxfs_sb_info* @VXFS_SBI(%struct.TYPE_4__* %40)
  store %struct.vxfs_sb_info* %41, %struct.vxfs_sb_info** %14, align 8
  br label %42

42:                                               ; preds = %169, %3
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %170

46:                                               ; preds = %42
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @PAGE_MASK, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  store i32 %50, i32* %17, align 4
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @PAGE_SHIFT, align 4
  %56 = ashr i32 %54, %55
  %57 = call %struct.page* @vxfs_get_page(i32 %53, i32 %56)
  store %struct.page* %57, %struct.page** %15, align 8
  %58 = load %struct.page*, %struct.page** %15, align 8
  %59 = call i64 @IS_ERR(%struct.page* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %46
  store %struct.vxfs_direct* null, %struct.vxfs_direct** %4, align 8
  br label %172

62:                                               ; preds = %46
  %63 = load %struct.page*, %struct.page** %15, align 8
  %64 = call i64 @page_address(%struct.page* %63)
  %65 = inttoptr i64 %64 to i8*
  store i8* %65, i8** %16, align 8
  br label %66

66:                                               ; preds = %161, %148, %139, %62
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* @PAGE_SIZE, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp slt i32 %71, %72
  br label %74

74:                                               ; preds = %70, %66
  %75 = phi i1 [ false, %66 ], [ %73, %70 ]
  br i1 %75, label %76, label %162

76:                                               ; preds = %74
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %8, align 4
  %79 = sub nsw i32 %78, 1
  %80 = and i32 %77, %79
  %81 = icmp slt i32 %80, 4
  br i1 %81, label %82, label %100

82:                                               ; preds = %76
  %83 = load i8*, i8** %16, align 8
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* @PAGE_MASK, align 4
  %86 = xor i32 %85, -1
  %87 = and i32 %84, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %83, i64 %88
  %90 = bitcast i8* %89 to %struct.vxfs_dirblk*
  store %struct.vxfs_dirblk* %90, %struct.vxfs_dirblk** %19, align 8
  %91 = load %struct.vxfs_sb_info*, %struct.vxfs_sb_info** %14, align 8
  %92 = load %struct.vxfs_dirblk*, %struct.vxfs_dirblk** %19, align 8
  %93 = call i32 @VXFS_DIRBLKOV(%struct.vxfs_sb_info* %91, %struct.vxfs_dirblk* %92)
  store i32 %93, i32* %20, align 4
  %94 = load i32, i32* %20, align 4
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %20, align 4
  %98 = load i32, i32* %17, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %17, align 4
  br label %100

100:                                              ; preds = %82, %76
  %101 = load i8*, i8** %16, align 8
  %102 = load i32, i32* %17, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = bitcast i8* %104 to %struct.vxfs_direct*
  store %struct.vxfs_direct* %105, %struct.vxfs_direct** %18, align 8
  %106 = load %struct.vxfs_direct*, %struct.vxfs_direct** %18, align 8
  %107 = getelementptr inbounds %struct.vxfs_direct, %struct.vxfs_direct* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %120, label %110

110:                                              ; preds = %100
  %111 = load i32, i32* %8, align 4
  %112 = sub nsw i32 %111, 1
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %8, align 4
  %116 = sub nsw i32 %115, 1
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %13, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %13, align 4
  br label %162

120:                                              ; preds = %100
  %121 = load %struct.vxfs_sb_info*, %struct.vxfs_sb_info** %14, align 8
  %122 = load %struct.vxfs_direct*, %struct.vxfs_direct** %18, align 8
  %123 = getelementptr inbounds %struct.vxfs_direct, %struct.vxfs_direct* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @fs16_to_cpu(%struct.vxfs_sb_info* %121, i32 %124)
  %126 = load i32, i32* %17, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %17, align 4
  %128 = load %struct.vxfs_sb_info*, %struct.vxfs_sb_info** %14, align 8
  %129 = load %struct.vxfs_direct*, %struct.vxfs_direct** %18, align 8
  %130 = getelementptr inbounds %struct.vxfs_direct, %struct.vxfs_direct* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @fs16_to_cpu(%struct.vxfs_sb_info* %128, i32 %131)
  %133 = load i32, i32* %13, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %13, align 4
  %135 = load %struct.vxfs_direct*, %struct.vxfs_direct** %18, align 8
  %136 = getelementptr inbounds %struct.vxfs_direct, %struct.vxfs_direct* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %120
  br label %66

140:                                              ; preds = %120
  %141 = load i32, i32* %10, align 4
  %142 = load %struct.vxfs_sb_info*, %struct.vxfs_sb_info** %14, align 8
  %143 = load %struct.vxfs_direct*, %struct.vxfs_direct** %18, align 8
  %144 = getelementptr inbounds %struct.vxfs_direct, %struct.vxfs_direct* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @fs16_to_cpu(%struct.vxfs_sb_info* %142, i32 %145)
  %147 = icmp ne i32 %141, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %140
  br label %66

149:                                              ; preds = %140
  %150 = load i8*, i8** %9, align 8
  %151 = load %struct.vxfs_direct*, %struct.vxfs_direct** %18, align 8
  %152 = getelementptr inbounds %struct.vxfs_direct, %struct.vxfs_direct* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %10, align 4
  %155 = call i32 @memcmp(i8* %150, i32 %153, i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %149
  %158 = load %struct.page*, %struct.page** %15, align 8
  %159 = load %struct.page**, %struct.page*** %7, align 8
  store %struct.page* %158, %struct.page** %159, align 8
  %160 = load %struct.vxfs_direct*, %struct.vxfs_direct** %18, align 8
  store %struct.vxfs_direct* %160, %struct.vxfs_direct** %12, align 8
  br label %162

161:                                              ; preds = %149
  br label %66

162:                                              ; preds = %157, %110, %74
  %163 = load %struct.vxfs_direct*, %struct.vxfs_direct** %12, align 8
  %164 = icmp ne %struct.vxfs_direct* %163, null
  br i1 %164, label %168, label %165

165:                                              ; preds = %162
  %166 = load %struct.page*, %struct.page** %15, align 8
  %167 = call i32 @vxfs_put_page(%struct.page* %166)
  br label %169

168:                                              ; preds = %162
  br label %170

169:                                              ; preds = %165
  br label %42

170:                                              ; preds = %168, %42
  %171 = load %struct.vxfs_direct*, %struct.vxfs_direct** %12, align 8
  store %struct.vxfs_direct* %171, %struct.vxfs_direct** %4, align 8
  br label %172

172:                                              ; preds = %170, %61
  %173 = load %struct.vxfs_direct*, %struct.vxfs_direct** %4, align 8
  ret %struct.vxfs_direct* %173
}

declare dso_local i32 @VXFS_DIRROUND(i32) #1

declare dso_local %struct.vxfs_sb_info* @VXFS_SBI(%struct.TYPE_4__*) #1

declare dso_local %struct.page* @vxfs_get_page(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @VXFS_DIRBLKOV(%struct.vxfs_sb_info*, %struct.vxfs_dirblk*) #1

declare dso_local i32 @fs16_to_cpu(%struct.vxfs_sb_info*, i32) #1

declare dso_local i32 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @vxfs_put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
