; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_ubifs_tnc_remove_dh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_ubifs_tnc_remove_dh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32 }
%union.ubifs_key = type { i32 }
%struct.ubifs_znode = type { i64, %struct.ubifs_zbranch* }
%struct.ubifs_zbranch = type { i32 }
%struct.ubifs_dent_node = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@UBIFS_MAX_DENT_NODE_SZ = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_tnc_remove_dh(%struct.ubifs_info* %0, %union.ubifs_key* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %union.ubifs_key*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ubifs_znode*, align 8
  %11 = alloca %struct.ubifs_dent_node*, align 8
  %12 = alloca %struct.ubifs_zbranch*, align 8
  %13 = alloca %union.ubifs_key, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %125

21:                                               ; preds = %3
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %23 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %26 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %27 = call i32 @lookup_level0_dirty(%struct.ubifs_info* %25, %union.ubifs_key* %26, %struct.ubifs_znode** %10, i32* %8)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %114

31:                                               ; preds = %21
  %32 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %33 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %32, i32 0, i32 1
  %34 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %34, i64 %36
  store %struct.ubifs_zbranch* %37, %struct.ubifs_zbranch** %12, align 8
  %38 = load i32, i32* @UBIFS_MAX_DENT_NODE_SZ, align 4
  %39 = load i32, i32* @GFP_NOFS, align 4
  %40 = call %struct.ubifs_dent_node* @kmalloc(i32 %38, i32 %39)
  store %struct.ubifs_dent_node* %40, %struct.ubifs_dent_node** %11, align 8
  %41 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %11, align 8
  %42 = icmp ne %struct.ubifs_dent_node* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %31
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %9, align 4
  br label %114

46:                                               ; preds = %31
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %48 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %12, align 8
  %49 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %11, align 8
  %50 = call i32 @tnc_read_hashed_node(%struct.ubifs_info* %47, %struct.ubifs_zbranch* %48, %struct.ubifs_dent_node* %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %111

54:                                               ; preds = %46
  %55 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %11, align 8
  %56 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le32_to_cpu(i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %86

61:                                               ; preds = %54
  %62 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %63 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %64 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %65 = call i32 @key_inum(%struct.ubifs_info* %63, %union.ubifs_key* %64)
  %66 = call i32 @lowest_dent_key(%struct.ubifs_info* %62, %union.ubifs_key* %13, i32 %65)
  %67 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %68 = call i32 @ubifs_lookup_level0(%struct.ubifs_info* %67, %union.ubifs_key* %13, %struct.ubifs_znode** %10, i32* %8)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %61
  br label %111

75:                                               ; preds = %61
  %76 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %77 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %78 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %11, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @search_dh_cookie(%struct.ubifs_info* %76, %union.ubifs_key* %77, %struct.ubifs_dent_node* %78, i32 %79, %struct.ubifs_znode** %10, i32* %8, i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %111

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85, %54
  %87 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %88 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %86
  %92 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %93 = call i32 @ubifs_zn_dirty(%struct.ubifs_znode* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %91, %86
  %96 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %97 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %98 = call %struct.ubifs_znode* @dirty_cow_bottom_up(%struct.ubifs_info* %96, %struct.ubifs_znode* %97)
  store %struct.ubifs_znode* %98, %struct.ubifs_znode** %10, align 8
  %99 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %100 = call i64 @IS_ERR(%struct.ubifs_znode* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %104 = call i32 @PTR_ERR(%struct.ubifs_znode* %103)
  store i32 %104, i32* %9, align 4
  br label %111

105:                                              ; preds = %95
  br label %106

106:                                              ; preds = %105, %91
  %107 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %108 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @tnc_delete(%struct.ubifs_info* %107, %struct.ubifs_znode* %108, i32 %109)
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %106, %102, %84, %74, %53
  %112 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %11, align 8
  %113 = call i32 @kfree(%struct.ubifs_dent_node* %112)
  br label %114

114:                                              ; preds = %111, %43, %30
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %119 = call i32 @dbg_check_tnc(%struct.ubifs_info* %118, i32 0)
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %117, %114
  %121 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %122 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %121, i32 0, i32 0
  %123 = call i32 @mutex_unlock(i32* %122)
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %120, %18
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lookup_level0_dirty(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*) #1

declare dso_local %struct.ubifs_dent_node* @kmalloc(i32, i32) #1

declare dso_local i32 @tnc_read_hashed_node(%struct.ubifs_info*, %struct.ubifs_zbranch*, %struct.ubifs_dent_node*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @lowest_dent_key(%struct.ubifs_info*, %union.ubifs_key*, i32) #1

declare dso_local i32 @key_inum(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @ubifs_lookup_level0(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @search_dh_cookie(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_dent_node*, i32, %struct.ubifs_znode**, i32*, i32) #1

declare dso_local i32 @ubifs_zn_dirty(%struct.ubifs_znode*) #1

declare dso_local %struct.ubifs_znode* @dirty_cow_bottom_up(%struct.ubifs_info*, %struct.ubifs_znode*) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_znode*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_znode*) #1

declare dso_local i32 @tnc_delete(%struct.ubifs_info*, %struct.ubifs_znode*, i32) #1

declare dso_local i32 @kfree(%struct.ubifs_dent_node*) #1

declare dso_local i32 @dbg_check_tnc(%struct.ubifs_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
