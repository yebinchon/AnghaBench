; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_ioctl.c_ocfs2_info_freefrag_scan_chain.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_ioctl.c_ocfs2_info_freefrag_scan_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.inode = type { i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.ocfs2_chain_rec = type { i32, i32 }
%struct.ocfs2_info_freefrag = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_group_desc = type { i64, i32, i32, i32 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Can't read the group descriptor # %llu from device.\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.inode*, %struct.ocfs2_dinode*, %struct.ocfs2_chain_rec*, %struct.ocfs2_info_freefrag*, i32)* @ocfs2_info_freefrag_scan_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_info_freefrag_scan_chain(%struct.ocfs2_super* %0, %struct.inode* %1, %struct.ocfs2_dinode* %2, %struct.ocfs2_chain_rec* %3, %struct.ocfs2_info_freefrag* %4, i32 %5) #0 {
  %7 = alloca %struct.ocfs2_super*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ocfs2_dinode*, align 8
  %10 = alloca %struct.ocfs2_chain_rec*, align 8
  %11 = alloca %struct.ocfs2_info_freefrag*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca %struct.ocfs2_group_desc*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.ocfs2_dinode* %2, %struct.ocfs2_dinode** %9, align 8
  store %struct.ocfs2_chain_rec* %3, %struct.ocfs2_chain_rec** %10, align 8
  store %struct.ocfs2_info_freefrag* %4, %struct.ocfs2_info_freefrag** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %16, align 8
  store %struct.ocfs2_group_desc* null, %struct.ocfs2_group_desc** %17, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %24, align 4
  %25 = load %struct.ocfs2_chain_rec*, %struct.ocfs2_chain_rec** %10, align 8
  %26 = getelementptr inbounds %struct.ocfs2_chain_rec, %struct.ocfs2_chain_rec* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le32_to_cpu(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %6
  br label %176

31:                                               ; preds = %6
  br label %32

32:                                               ; preds = %169, %31
  %33 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %34 = icmp ne %struct.ocfs2_group_desc* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = load %struct.ocfs2_chain_rec*, %struct.ocfs2_chain_rec** %10, align 8
  %37 = getelementptr inbounds %struct.ocfs2_chain_rec, %struct.ocfs2_chain_rec* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @le64_to_cpu(i32 %38)
  store i64 %39, i64* %15, align 8
  br label %45

40:                                               ; preds = %32
  %41 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %42 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @le64_to_cpu(i32 %43)
  store i64 %44, i64* %15, align 8
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %47 = icmp ne %struct.buffer_head* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %50 = call i32 @brelse(%struct.buffer_head* %49)
  store %struct.buffer_head* null, %struct.buffer_head** %16, align 8
  br label %51

51:                                               ; preds = %48, %45
  %52 = load %struct.ocfs2_info_freefrag*, %struct.ocfs2_info_freefrag** %11, align 8
  %53 = getelementptr inbounds %struct.ocfs2_info_freefrag, %struct.ocfs2_info_freefrag* %52, i32 0, i32 2
  %54 = call i64 @o2info_coherent(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %59 = load i64, i64* %15, align 8
  %60 = call i32 @ocfs2_read_group_descriptor(%struct.inode* %57, %struct.ocfs2_dinode* %58, i64 %59, %struct.buffer_head** %16)
  store i32 %60, i32* %13, align 4
  br label %65

61:                                               ; preds = %51
  %62 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %63 = load i64, i64* %15, align 8
  %64 = call i32 @ocfs2_read_blocks_sync(%struct.ocfs2_super* %62, i64 %63, i32 1, %struct.buffer_head** %16)
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %61, %56
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i32, i32* @ML_ERROR, align 4
  %70 = load i64, i64* %15, align 8
  %71 = call i32 @mlog(i32 %69, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %70)
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %13, align 4
  br label %176

74:                                               ; preds = %65
  %75 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %76 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %78, %struct.ocfs2_group_desc** %17, align 8
  %79 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %80 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @le16_to_cpu(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %74
  br label %169

85:                                               ; preds = %74
  %86 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %87 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @le16_to_cpu(i32 %88)
  store i32 %89, i32* %18, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  br label %90

90:                                               ; preds = %158, %85
  %91 = load i32, i32* %22, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %161

94:                                               ; preds = %90
  %95 = load i32, i32* %20, align 4
  %96 = load %struct.ocfs2_info_freefrag*, %struct.ocfs2_info_freefrag** %11, align 8
  %97 = getelementptr inbounds %struct.ocfs2_info_freefrag, %struct.ocfs2_info_freefrag* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = add i32 %95, %98
  %100 = load i32, i32* %18, align 4
  %101 = icmp ugt i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %94
  %103 = load i32, i32* %18, align 4
  %104 = load i32, i32* %20, align 4
  %105 = sub i32 %103, %104
  store i32 %105, i32* %19, align 4
  br label %110

106:                                              ; preds = %94
  %107 = load %struct.ocfs2_info_freefrag*, %struct.ocfs2_info_freefrag** %11, align 8
  %108 = getelementptr inbounds %struct.ocfs2_info_freefrag, %struct.ocfs2_info_freefrag* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %19, align 4
  br label %110

110:                                              ; preds = %106, %102
  store i32 0, i32* %23, align 4
  store i32 0, i32* %21, align 4
  br label %111

111:                                              ; preds = %142, %110
  %112 = load i32, i32* %21, align 4
  %113 = load i32, i32* %19, align 4
  %114 = icmp ult i32 %112, %113
  br i1 %114, label %115, label %145

115:                                              ; preds = %111
  %116 = load i32, i32* %20, align 4
  %117 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %118 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to i64*
  %121 = call i32 @ocfs2_test_bit(i32 %116, i64* %120)
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %14, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %115
  %125 = load i32, i32* %24, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %24, align 4
  %127 = load i32, i32* %23, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %23, align 4
  br label %129

129:                                              ; preds = %124, %115
  %130 = load i32, i32* %14, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %129
  %133 = load i32, i32* %24, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load %struct.ocfs2_info_freefrag*, %struct.ocfs2_info_freefrag** %11, align 8
  %137 = load i32, i32* %24, align 4
  %138 = call i32 @ocfs2_info_update_ffg(%struct.ocfs2_info_freefrag* %136, i32 %137)
  store i32 0, i32* %24, align 4
  br label %139

139:                                              ; preds = %135, %132, %129
  %140 = load i32, i32* %20, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %20, align 4
  br label %142

142:                                              ; preds = %139
  %143 = load i32, i32* %21, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %21, align 4
  br label %111

145:                                              ; preds = %111
  %146 = load i32, i32* %23, align 4
  %147 = load %struct.ocfs2_info_freefrag*, %struct.ocfs2_info_freefrag** %11, align 8
  %148 = getelementptr inbounds %struct.ocfs2_info_freefrag, %struct.ocfs2_info_freefrag* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %146, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %145
  %152 = load %struct.ocfs2_info_freefrag*, %struct.ocfs2_info_freefrag** %11, align 8
  %153 = getelementptr inbounds %struct.ocfs2_info_freefrag, %struct.ocfs2_info_freefrag* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %151, %145
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %22, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %22, align 4
  br label %90

161:                                              ; preds = %90
  %162 = load i32, i32* %24, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = load %struct.ocfs2_info_freefrag*, %struct.ocfs2_info_freefrag** %11, align 8
  %166 = load i32, i32* %24, align 4
  %167 = call i32 @ocfs2_info_update_ffg(%struct.ocfs2_info_freefrag* %165, i32 %166)
  br label %168

168:                                              ; preds = %164, %161
  br label %169

169:                                              ; preds = %168, %84
  %170 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %171 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = call i64 @le64_to_cpu(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %32, label %175

175:                                              ; preds = %169
  br label %176

176:                                              ; preds = %175, %68, %30
  %177 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %178 = call i32 @brelse(%struct.buffer_head* %177)
  %179 = load i32, i32* %13, align 4
  ret i32 %179
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @o2info_coherent(i32*) #1

declare dso_local i32 @ocfs2_read_group_descriptor(%struct.inode*, %struct.ocfs2_dinode*, i64, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_read_blocks_sync(%struct.ocfs2_super*, i64, i32, %struct.buffer_head**) #1

declare dso_local i32 @mlog(i32, i8*, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_test_bit(i32, i64*) #1

declare dso_local i32 @ocfs2_info_update_ffg(%struct.ocfs2_info_freefrag*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
