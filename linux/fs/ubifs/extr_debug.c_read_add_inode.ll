; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_read_add_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_read_add_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsck_inode = type { i32 }
%struct.ubifs_info = type { i32 }
%struct.fsck_data = type { i32 }
%union.ubifs_key = type { i32 }
%struct.ubifs_znode = type { %struct.ubifs_zbranch* }
%struct.ubifs_zbranch = type { i64, i32, i32 }
%struct.ubifs_ino_node = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"inode %lu not found in index\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"error %d while looking up inode %lu\00", align 1
@UBIFS_INO_NODE_SZ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"bad node %lu node length %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"cannot read inode node at LEB %d:%d, error %d\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"error %ld while adding inode %lu node\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fsck_inode* (%struct.ubifs_info*, %struct.fsck_data*, i64)* @read_add_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fsck_inode* @read_add_inode(%struct.ubifs_info* %0, %struct.fsck_data* %1, i64 %2) #0 {
  %4 = alloca %struct.fsck_inode*, align 8
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.fsck_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.ubifs_key, align 4
  %11 = alloca %struct.ubifs_znode*, align 8
  %12 = alloca %struct.ubifs_zbranch*, align 8
  %13 = alloca %struct.ubifs_ino_node*, align 8
  %14 = alloca %struct.fsck_inode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.fsck_data* %1, %struct.fsck_data** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.fsck_data*, %struct.fsck_data** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call %struct.fsck_inode* @search_inode(%struct.fsck_data* %15, i64 %16)
  store %struct.fsck_inode* %17, %struct.fsck_inode** %14, align 8
  %18 = load %struct.fsck_inode*, %struct.fsck_inode** %14, align 8
  %19 = icmp ne %struct.fsck_inode* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load %struct.fsck_inode*, %struct.fsck_inode** %14, align 8
  store %struct.fsck_inode* %21, %struct.fsck_inode** %4, align 8
  br label %124

22:                                               ; preds = %3
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @ino_key_init(%struct.ubifs_info* %23, %union.ubifs_key* %10, i64 %24)
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %27 = call i32 @ubifs_lookup_level0(%struct.ubifs_info* %26, %union.ubifs_key* %10, %struct.ubifs_znode** %11, i32* %8)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %22
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 (%struct.ubifs_info*, i8*, i64, ...) @ubifs_err(%struct.ubifs_info* %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.fsck_inode* @ERR_PTR(i32 %35)
  store %struct.fsck_inode* %36, %struct.fsck_inode** %4, align 8
  br label %124

37:                                               ; preds = %22
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %7, align 8
  %45 = call i32 (%struct.ubifs_info*, i8*, i64, ...) @ubifs_err(%struct.ubifs_info* %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %43, i64 %44)
  %46 = load i32, i32* %9, align 4
  %47 = call %struct.fsck_inode* @ERR_PTR(i32 %46)
  store %struct.fsck_inode* %47, %struct.fsck_inode** %4, align 8
  br label %124

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %51 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %50, i32 0, i32 0
  %52 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %52, i64 %54
  store %struct.ubifs_zbranch* %55, %struct.ubifs_zbranch** %12, align 8
  %56 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %12, align 8
  %57 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @UBIFS_INO_NODE_SZ, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %49
  %62 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %12, align 8
  %65 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (%struct.ubifs_info*, i8*, i64, ...) @ubifs_err(%struct.ubifs_info* %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %63, i64 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  %70 = call %struct.fsck_inode* @ERR_PTR(i32 %69)
  store %struct.fsck_inode* %70, %struct.fsck_inode** %4, align 8
  br label %124

71:                                               ; preds = %49
  %72 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %12, align 8
  %73 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @GFP_NOFS, align 4
  %76 = call %struct.ubifs_ino_node* @kmalloc(i64 %74, i32 %75)
  store %struct.ubifs_ino_node* %76, %struct.ubifs_ino_node** %13, align 8
  %77 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %13, align 8
  %78 = icmp ne %struct.ubifs_ino_node* %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %71
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  %82 = call %struct.fsck_inode* @ERR_PTR(i32 %81)
  store %struct.fsck_inode* %82, %struct.fsck_inode** %4, align 8
  br label %124

83:                                               ; preds = %71
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %85 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %12, align 8
  %86 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %13, align 8
  %87 = call i32 @ubifs_tnc_read_node(%struct.ubifs_info* %84, %struct.ubifs_zbranch* %85, %struct.ubifs_ino_node* %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %83
  %91 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %92 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %12, align 8
  %93 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %12, align 8
  %97 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 (%struct.ubifs_info*, i8*, i64, ...) @ubifs_err(%struct.ubifs_info* %91, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %95, i32 %98, i32 %99)
  %101 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %13, align 8
  %102 = call i32 @kfree(%struct.ubifs_ino_node* %101)
  %103 = load i32, i32* %9, align 4
  %104 = call %struct.fsck_inode* @ERR_PTR(i32 %103)
  store %struct.fsck_inode* %104, %struct.fsck_inode** %4, align 8
  br label %124

105:                                              ; preds = %83
  %106 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %107 = load %struct.fsck_data*, %struct.fsck_data** %6, align 8
  %108 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %13, align 8
  %109 = call %struct.fsck_inode* @add_inode(%struct.ubifs_info* %106, %struct.fsck_data* %107, %struct.ubifs_ino_node* %108)
  store %struct.fsck_inode* %109, %struct.fsck_inode** %14, align 8
  %110 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %13, align 8
  %111 = call i32 @kfree(%struct.ubifs_ino_node* %110)
  %112 = load %struct.fsck_inode*, %struct.fsck_inode** %14, align 8
  %113 = call i64 @IS_ERR(%struct.fsck_inode* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %105
  %116 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %117 = load %struct.fsck_inode*, %struct.fsck_inode** %14, align 8
  %118 = call i64 @PTR_ERR(%struct.fsck_inode* %117)
  %119 = load i64, i64* %7, align 8
  %120 = call i32 (%struct.ubifs_info*, i8*, i64, ...) @ubifs_err(%struct.ubifs_info* %116, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 %118, i64 %119)
  %121 = load %struct.fsck_inode*, %struct.fsck_inode** %14, align 8
  store %struct.fsck_inode* %121, %struct.fsck_inode** %4, align 8
  br label %124

122:                                              ; preds = %105
  %123 = load %struct.fsck_inode*, %struct.fsck_inode** %14, align 8
  store %struct.fsck_inode* %123, %struct.fsck_inode** %4, align 8
  br label %124

124:                                              ; preds = %122, %115, %90, %79, %61, %40, %30, %20
  %125 = load %struct.fsck_inode*, %struct.fsck_inode** %4, align 8
  ret %struct.fsck_inode* %125
}

declare dso_local %struct.fsck_inode* @search_inode(%struct.fsck_data*, i64) #1

declare dso_local i32 @ino_key_init(%struct.ubifs_info*, %union.ubifs_key*, i64) #1

declare dso_local i32 @ubifs_lookup_level0(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i64, ...) #1

declare dso_local %struct.fsck_inode* @ERR_PTR(i32) #1

declare dso_local %struct.ubifs_ino_node* @kmalloc(i64, i32) #1

declare dso_local i32 @ubifs_tnc_read_node(%struct.ubifs_info*, %struct.ubifs_zbranch*, %struct.ubifs_ino_node*) #1

declare dso_local i32 @kfree(%struct.ubifs_ino_node*) #1

declare dso_local %struct.fsck_inode* @add_inode(%struct.ubifs_info*, %struct.fsck_data*, %struct.ubifs_ino_node*) #1

declare dso_local i64 @IS_ERR(%struct.fsck_inode*) #1

declare dso_local i64 @PTR_ERR(%struct.fsck_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
