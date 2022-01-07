; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_preallocate_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_preallocate_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, i64, i32, i32 }
%struct.iov_iter = type { i32 }
%struct.inode = type { i32 }
%struct.f2fs_map_blocks = type { i64, i64, i32, i32, i32*, i32* }

@IOCB_DIRECT = common dso_local global i32 0, align 4
@FI_NO_PREALLOC = common dso_local global i32 0, align 4
@NO_CHECK_TYPE = common dso_local global i32 0, align 4
@F2FS_GET_BLOCK_PRE_AIO = common dso_local global i32 0, align 4
@F2FS_GET_BLOCK_PRE_DIO = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_preallocate_blocks(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.f2fs_map_blocks, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %11 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %12 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.inode* @file_inode(i32 %13)
  store %struct.inode* %14, %struct.inode** %6, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %16 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IOCB_DIRECT, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = call i32 @f2fs_convert_inline_inode(%struct.inode* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %3, align 4
  br label %146

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %36 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %37 = call i64 @allow_outplace_dio(%struct.inode* %34, %struct.kiocb* %35, %struct.iov_iter* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %146

40:                                               ; preds = %33, %30
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = load i32, i32* @FI_NO_PREALLOC, align 4
  %43 = call i64 @is_inode_flag_set(%struct.inode* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %146

46:                                               ; preds = %40
  %47 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %48 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @F2FS_BLK_ALIGN(i64 %49)
  %51 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %7, i32 0, i32 0
  store i64 %50, i64* %51, align 8
  %52 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %53 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %56 = call i64 @iov_iter_count(%struct.iov_iter* %55)
  %57 = add nsw i64 %54, %56
  %58 = call i64 @F2FS_BYTES_TO_BLK(i64 %57)
  %59 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %7, i32 0, i32 1
  store i64 %58, i64* %59, align 8
  %60 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %7, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %7, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %61, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %46
  %66 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %7, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %7, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %69, %67
  store i64 %70, i64* %68, align 8
  br label %73

71:                                               ; preds = %46
  %72 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %7, i32 0, i32 1
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %71, %65
  %74 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %7, i32 0, i32 5
  store i32* null, i32** %74, align 8
  %75 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %7, i32 0, i32 4
  store i32* null, i32** %75, align 8
  %76 = load i32, i32* @NO_CHECK_TYPE, align 4
  %77 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %7, i32 0, i32 3
  store i32 %76, i32* %77, align 4
  %78 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %7, i32 0, i32 2
  store i32 1, i32* %78, align 8
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %73
  %82 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %83 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @f2fs_rw_hint_to_seg_type(i32 %84)
  %86 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %7, i32 0, i32 3
  store i32 %85, i32* %86, align 4
  %87 = load %struct.inode*, %struct.inode** %6, align 8
  %88 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %89 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %90 = call i64 @f2fs_force_buffered_io(%struct.inode* %87, %struct.kiocb* %88, %struct.iov_iter* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %81
  %93 = load i32, i32* @F2FS_GET_BLOCK_PRE_AIO, align 4
  br label %96

94:                                               ; preds = %81
  %95 = load i32, i32* @F2FS_GET_BLOCK_PRE_DIO, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  store i32 %97, i32* %8, align 4
  br label %124

98:                                               ; preds = %73
  %99 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %100 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %103 = call i64 @iov_iter_count(%struct.iov_iter* %102)
  %104 = add nsw i64 %101, %103
  %105 = load %struct.inode*, %struct.inode** %6, align 8
  %106 = call i64 @MAX_INLINE_DATA(%struct.inode* %105)
  %107 = icmp sgt i64 %104, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %98
  %109 = load %struct.inode*, %struct.inode** %6, align 8
  %110 = call i32 @f2fs_convert_inline_inode(%struct.inode* %109)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %3, align 4
  br label %146

115:                                              ; preds = %108
  br label %116

116:                                              ; preds = %115, %98
  %117 = load %struct.inode*, %struct.inode** %6, align 8
  %118 = call i64 @f2fs_has_inline_data(%struct.inode* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load i32, i32* %9, align 4
  store i32 %121, i32* %3, align 4
  br label %146

122:                                              ; preds = %116
  %123 = load i32, i32* @F2FS_GET_BLOCK_PRE_AIO, align 4
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %122, %96
  %125 = load %struct.inode*, %struct.inode** %6, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @f2fs_map_blocks(%struct.inode* %125, %struct.f2fs_map_blocks* %7, i32 1, i32 %126)
  store i32 %127, i32* %9, align 4
  %128 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %7, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp sgt i64 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %124
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* @ENOSPC, align 4
  %134 = sub nsw i32 0, %133
  %135 = icmp eq i32 %132, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %131
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %136
  %140 = load %struct.inode*, %struct.inode** %6, align 8
  %141 = load i32, i32* @FI_NO_PREALLOC, align 4
  %142 = call i32 @set_inode_flag(%struct.inode* %140, i32 %141)
  br label %143

143:                                              ; preds = %139, %136
  store i32 0, i32* %9, align 4
  br label %144

144:                                              ; preds = %143, %131, %124
  %145 = load i32, i32* %9, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %144, %120, %113, %45, %39, %27
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local %struct.inode* @file_inode(i32) #1

declare dso_local i32 @f2fs_convert_inline_inode(%struct.inode*) #1

declare dso_local i64 @allow_outplace_dio(%struct.inode*, %struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i64 @is_inode_flag_set(%struct.inode*, i32) #1

declare dso_local i64 @F2FS_BLK_ALIGN(i64) #1

declare dso_local i64 @F2FS_BYTES_TO_BLK(i64) #1

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @f2fs_rw_hint_to_seg_type(i32) #1

declare dso_local i64 @f2fs_force_buffered_io(%struct.inode*, %struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i64 @MAX_INLINE_DATA(%struct.inode*) #1

declare dso_local i64 @f2fs_has_inline_data(%struct.inode*) #1

declare dso_local i32 @f2fs_map_blocks(%struct.inode*, %struct.f2fs_map_blocks*, i32, i32) #1

declare dso_local i32 @set_inode_flag(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
