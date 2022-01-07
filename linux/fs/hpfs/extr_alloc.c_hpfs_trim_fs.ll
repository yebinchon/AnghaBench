; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_alloc.c_hpfs_trim_fs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_alloc.c_hpfs_trim_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.hpfs_sb_info = type { i64, i64, i64 }
%struct.quad_buffer_head = type { i32 }

@EROFS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"trim\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpfs_trim_fs(%struct.super_block* %0, i64 %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.hpfs_sb_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.quad_buffer_head, align 4
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.super_block*, %struct.super_block** %7, align 8
  %21 = call %struct.hpfs_sb_info* @hpfs_sb(%struct.super_block* %20)
  store %struct.hpfs_sb_info* %21, %struct.hpfs_sb_info** %13, align 8
  %22 = load i32*, i32** %11, align 8
  store i32 0, i32* %22, align 4
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %5
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %13, align 8
  %28 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25, %5
  %32 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %13, align 8
  %33 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %9, align 8
  br label %35

35:                                               ; preds = %31, %25
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %13, align 8
  %38 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %184

42:                                               ; preds = %35
  %43 = load i64, i64* %10, align 8
  %44 = icmp sgt i64 %43, 16384
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %184

46:                                               ; preds = %42
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %13, align 8
  %49 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %13, align 8
  %52 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = icmp slt i64 %47, %54
  br i1 %55, label %56, label %114

56:                                               ; preds = %46
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %13, align 8
  %59 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %57, %60
  br i1 %61, label %62, label %114

62:                                               ; preds = %56
  %63 = load %struct.super_block*, %struct.super_block** %7, align 8
  %64 = call i32 @hpfs_lock(%struct.super_block* %63)
  %65 = load %struct.super_block*, %struct.super_block** %7, align 8
  %66 = call i64 @sb_rdonly(%struct.super_block* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @EROFS, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %12, align 4
  br label %111

71:                                               ; preds = %62
  %72 = load %struct.super_block*, %struct.super_block** %7, align 8
  %73 = call i32* @hpfs_map_dnode_bitmap(%struct.super_block* %72, %struct.quad_buffer_head* %19)
  store i32* %73, i32** %18, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %12, align 4
  br label %111

78:                                               ; preds = %71
  store i32 0, i32* %14, align 4
  br label %79

79:                                               ; preds = %89, %78
  %80 = load i32*, i32** %18, align 8
  %81 = call i32 @find_run(i32* %80, i32* %14)
  store i32 %81, i32* %15, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  br label %87

87:                                               ; preds = %83, %79
  %88 = phi i1 [ false, %79 ], [ %86, %83 ]
  br i1 %88, label %89, label %109

89:                                               ; preds = %87
  %90 = load %struct.super_block*, %struct.super_block** %7, align 8
  %91 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %13, align 8
  %92 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %14, align 4
  %95 = mul i32 %94, 4
  %96 = zext i32 %95 to i64
  %97 = add nsw i64 %93, %96
  %98 = trunc i64 %97 to i32
  %99 = load i32, i32* %15, align 4
  %100 = mul i32 %99, 4
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* %9, align 8
  %103 = load i64, i64* %10, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = call i32 @do_trim(%struct.super_block* %90, i32 %98, i32 %100, i64 %101, i64 %102, i64 %103, i32* %104)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %14, align 4
  %108 = add i32 %107, %106
  store i32 %108, i32* %14, align 4
  br label %79

109:                                              ; preds = %87
  %110 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %19)
  br label %111

111:                                              ; preds = %109, %75, %68
  %112 = load %struct.super_block*, %struct.super_block** %7, align 8
  %113 = call i32 @hpfs_unlock(%struct.super_block* %112)
  br label %114

114:                                              ; preds = %111, %56, %46
  %115 = load i64, i64* %8, align 8
  %116 = ashr i64 %115, 14
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %16, align 4
  %118 = load i64, i64* %9, align 8
  %119 = add nsw i64 %118, 16383
  %120 = ashr i64 %119, 14
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %17, align 4
  br label %122

122:                                              ; preds = %177, %114
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* %17, align 4
  %125 = icmp ult i32 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  br label %130

130:                                              ; preds = %126, %122
  %131 = phi i1 [ false, %122 ], [ %129, %126 ]
  br i1 %131, label %132, label %182

132:                                              ; preds = %130
  %133 = load %struct.super_block*, %struct.super_block** %7, align 8
  %134 = call i32 @hpfs_lock(%struct.super_block* %133)
  %135 = load %struct.super_block*, %struct.super_block** %7, align 8
  %136 = call i64 @sb_rdonly(%struct.super_block* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load i32, i32* @EROFS, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %12, align 4
  br label %177

141:                                              ; preds = %132
  %142 = load %struct.super_block*, %struct.super_block** %7, align 8
  %143 = load i32, i32* %16, align 4
  %144 = call i32* @hpfs_map_bitmap(%struct.super_block* %142, i32 %143, %struct.quad_buffer_head* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %144, i32** %18, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %149, label %146

146:                                              ; preds = %141
  %147 = load i32, i32* @EIO, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %12, align 4
  br label %177

149:                                              ; preds = %141
  store i32 0, i32* %14, align 4
  br label %150

150:                                              ; preds = %160, %149
  %151 = load i32*, i32** %18, align 8
  %152 = call i32 @find_run(i32* %151, i32* %14)
  store i32 %152, i32* %15, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = load i32, i32* %12, align 4
  %156 = icmp ne i32 %155, 0
  %157 = xor i1 %156, true
  br label %158

158:                                              ; preds = %154, %150
  %159 = phi i1 [ false, %150 ], [ %157, %154 ]
  br i1 %159, label %160, label %175

160:                                              ; preds = %158
  %161 = load %struct.super_block*, %struct.super_block** %7, align 8
  %162 = load i32, i32* %16, align 4
  %163 = shl i32 %162, 14
  %164 = load i32, i32* %14, align 4
  %165 = add i32 %163, %164
  %166 = load i32, i32* %15, align 4
  %167 = load i64, i64* %8, align 8
  %168 = load i64, i64* %9, align 8
  %169 = load i64, i64* %10, align 8
  %170 = load i32*, i32** %11, align 8
  %171 = call i32 @do_trim(%struct.super_block* %161, i32 %165, i32 %166, i64 %167, i64 %168, i64 %169, i32* %170)
  store i32 %171, i32* %12, align 4
  %172 = load i32, i32* %15, align 4
  %173 = load i32, i32* %14, align 4
  %174 = add i32 %173, %172
  store i32 %174, i32* %14, align 4
  br label %150

175:                                              ; preds = %158
  %176 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %19)
  br label %177

177:                                              ; preds = %175, %146, %138
  %178 = load %struct.super_block*, %struct.super_block** %7, align 8
  %179 = call i32 @hpfs_unlock(%struct.super_block* %178)
  %180 = load i32, i32* %16, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %16, align 4
  br label %122

182:                                              ; preds = %130
  %183 = load i32, i32* %12, align 4
  store i32 %183, i32* %6, align 4
  br label %184

184:                                              ; preds = %182, %45, %41
  %185 = load i32, i32* %6, align 4
  ret i32 %185
}

declare dso_local %struct.hpfs_sb_info* @hpfs_sb(%struct.super_block*) #1

declare dso_local i32 @hpfs_lock(%struct.super_block*) #1

declare dso_local i64 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32* @hpfs_map_dnode_bitmap(%struct.super_block*, %struct.quad_buffer_head*) #1

declare dso_local i32 @find_run(i32*, i32*) #1

declare dso_local i32 @do_trim(%struct.super_block*, i32, i32, i64, i64, i64, i32*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_unlock(%struct.super_block*) #1

declare dso_local i32* @hpfs_map_bitmap(%struct.super_block*, i32, %struct.quad_buffer_head*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
