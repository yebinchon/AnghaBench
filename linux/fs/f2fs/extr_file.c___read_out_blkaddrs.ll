; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c___read_out_blkaddrs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c___read_out_blkaddrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.dnode_of_data = type { i64, i32, i32, i32 }

@LOOKUP_NODE_RA = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@DATA_GENERIC_ENHANCE = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@LFS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NULL_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, i32*, i32, i32)* @__read_out_blkaddrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__read_out_blkaddrs(%struct.inode* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.f2fs_sb_info*, align 8
  %13 = alloca %struct.dnode_of_data, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %17)
  store %struct.f2fs_sb_info* %18, %struct.f2fs_sb_info** %12, align 8
  br label %19

19:                                               ; preds = %144, %5
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = call i32 @set_new_dnode(%struct.dnode_of_data* %13, %struct.inode* %20, i32* null, i32* null, i32 0)
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @LOOKUP_NODE_RA, align 4
  %24 = call i32 @f2fs_get_dnode_of_data(%struct.dnode_of_data* %13, i32 %22, i32 %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %6, align 4
  br label %146

34:                                               ; preds = %27, %19
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %63

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %13, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @ENOENT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %146

46:                                               ; preds = %39
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = call i64 @ADDRS_PER_BLOCK(%struct.inode* %47)
  %49 = trunc i64 %48 to i32
  %50 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %13, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %49, %51
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @min(i32 %52, i32 %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %8, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32* %62, i32** %9, align 8
  br label %135

63:                                               ; preds = %34
  br label %64

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %13, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.inode*, %struct.inode** %7, align 8
  %68 = call i64 @ADDRS_PER_PAGE(i32 %66, %struct.inode* %67)
  %69 = trunc i64 %68 to i32
  %70 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %13, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %69, %71
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @min(i32 %72, i32 %73)
  store i32 %74, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %75

75:                                               ; preds = %123, %64
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %133

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %13, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %13, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %13, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @datablock_addr(i32 %81, i32 %83, i32 %85)
  %87 = load i32*, i32** %8, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @__is_valid_data_blkaddr(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %79
  %93 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %12, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @DATA_GENERIC_ENHANCE, align 4
  %97 = call i32 @f2fs_is_valid_blkaddr(%struct.f2fs_sb_info* %93, i32 %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %92
  %100 = call i32 @f2fs_put_dnode(%struct.dnode_of_data* %13)
  %101 = load i32, i32* @EFSCORRUPTED, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %6, align 4
  br label %146

103:                                              ; preds = %92, %79
  %104 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %12, align 8
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @f2fs_is_checkpointed_data(%struct.f2fs_sb_info* %104, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %122, label %109

109:                                              ; preds = %103
  %110 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %12, align 8
  %111 = load i32, i32* @LFS, align 4
  %112 = call i64 @test_opt(%struct.f2fs_sb_info* %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = call i32 @f2fs_put_dnode(%struct.dnode_of_data* %13)
  %116 = load i32, i32* @EOPNOTSUPP, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %6, align 4
  br label %146

118:                                              ; preds = %109
  %119 = load i32, i32* @NULL_ADDR, align 4
  %120 = call i32 @f2fs_update_data_blkaddr(%struct.dnode_of_data* %13, i32 %119)
  %121 = load i32*, i32** %9, align 8
  store i32 1, i32* %121, align 4
  br label %122

122:                                              ; preds = %118, %103
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %16, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %16, align 4
  %126 = load i32*, i32** %8, align 8
  %127 = getelementptr inbounds i32, i32* %126, i32 1
  store i32* %127, i32** %8, align 8
  %128 = load i32*, i32** %9, align 8
  %129 = getelementptr inbounds i32, i32* %128, i32 1
  store i32* %129, i32** %9, align 8
  %130 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %13, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 8
  br label %75

133:                                              ; preds = %75
  %134 = call i32 @f2fs_put_dnode(%struct.dnode_of_data* %13)
  br label %135

135:                                              ; preds = %133, %46
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* %11, align 4
  %138 = sub nsw i32 %137, %136
  store i32 %138, i32* %11, align 4
  %139 = load i32, i32* %15, align 4
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  br label %19

145:                                              ; preds = %135
  store i32 0, i32* %6, align 4
  br label %146

146:                                              ; preds = %145, %114, %99, %43, %32
  %147 = load i32, i32* %6, align 4
  ret i32 %147
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @set_new_dnode(%struct.dnode_of_data*, %struct.inode*, i32*, i32*, i32) #1

declare dso_local i32 @f2fs_get_dnode_of_data(%struct.dnode_of_data*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @ADDRS_PER_BLOCK(%struct.inode*) #1

declare dso_local i64 @ADDRS_PER_PAGE(i32, %struct.inode*) #1

declare dso_local i32 @datablock_addr(i32, i32, i32) #1

declare dso_local i64 @__is_valid_data_blkaddr(i32) #1

declare dso_local i32 @f2fs_is_valid_blkaddr(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @f2fs_put_dnode(%struct.dnode_of_data*) #1

declare dso_local i32 @f2fs_is_checkpointed_data(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @test_opt(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_update_data_blkaddr(%struct.dnode_of_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
