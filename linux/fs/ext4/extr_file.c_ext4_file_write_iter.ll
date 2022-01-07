; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_file.c_ext4_file_write_iter.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_file.c_ext4_file_write_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, i32*, i32, i32 }
%struct.iov_iter = type { i32 }
%struct.inode = type { i32 }

@IOCB_DIRECT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IOCB_NOWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EXT4_INODE_EXTENTS = common dso_local global i32 0, align 4
@EIOCBQUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*)* @ext4_file_write_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_file_write_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
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
  %15 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %16 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IOCB_DIRECT, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @EXT4_SB(i32 %22)
  %24 = call i32 @ext4_forced_shutdown(i32 %23)
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %141

30:                                               ; preds = %2
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = call i32 @inode_trylock(%struct.inode* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %30
  %35 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %36 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IOCB_NOWAIT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @EAGAIN, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %141

44:                                               ; preds = %34
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  %46 = call i32 @inode_lock(%struct.inode* %45)
  br label %47

47:                                               ; preds = %44, %30
  %48 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %49 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %50 = call i32 @ext4_write_checks(%struct.kiocb* %48, %struct.iov_iter* %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %137

54:                                               ; preds = %47
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %54
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %60 = call i64 @ext4_test_inode_flag(%struct.inode* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %57
  %63 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %64 = call i32 @is_sync_kiocb(%struct.kiocb* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %62
  %67 = load %struct.inode*, %struct.inode** %6, align 8
  %68 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %69 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %70 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @ext4_unaligned_aio(%struct.inode* %67, %struct.iov_iter* %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  store i32 1, i32* %8, align 4
  %75 = load %struct.inode*, %struct.inode** %6, align 8
  %76 = call i32 @ext4_unwritten_wait(%struct.inode* %75)
  br label %77

77:                                               ; preds = %74, %66, %62, %57, %54
  %78 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %79 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %78, i32 0, i32 1
  store i32* %9, i32** %79, align 8
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %112

82:                                               ; preds = %77
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %112, label %85

85:                                               ; preds = %82
  %86 = load %struct.inode*, %struct.inode** %6, align 8
  %87 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %88 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %91 = call i32 @iov_iter_count(%struct.iov_iter* %90)
  %92 = call i64 @ext4_overwrite_io(%struct.inode* %86, i32 %89, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %85
  %95 = load %struct.inode*, %struct.inode** %6, align 8
  %96 = call i64 @ext4_should_dioread_nolock(%struct.inode* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i32 1, i32* %9, align 4
  br label %99

99:                                               ; preds = %98, %94
  br label %111

100:                                              ; preds = %85
  %101 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %102 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @IOCB_NOWAIT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i32, i32* @EAGAIN, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %10, align 4
  br label %137

110:                                              ; preds = %100
  br label %111

111:                                              ; preds = %110, %99
  br label %112

112:                                              ; preds = %111, %82, %77
  %113 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %114 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %115 = call i32 @__generic_file_write_iter(%struct.kiocb* %113, %struct.iov_iter* %114)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @EIOCBQUEUED, align 4
  %118 = sub nsw i32 0, %117
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %112
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load %struct.inode*, %struct.inode** %6, align 8
  %125 = call i32 @ext4_unwritten_wait(%struct.inode* %124)
  br label %126

126:                                              ; preds = %123, %120, %112
  %127 = load %struct.inode*, %struct.inode** %6, align 8
  %128 = call i32 @inode_unlock(%struct.inode* %127)
  %129 = load i32, i32* %10, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %133 = load i32, i32* %10, align 4
  %134 = call i32 @generic_write_sync(%struct.kiocb* %132, i32 %133)
  store i32 %134, i32* %10, align 4
  br label %135

135:                                              ; preds = %131, %126
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %3, align 4
  br label %141

137:                                              ; preds = %107, %53
  %138 = load %struct.inode*, %struct.inode** %6, align 8
  %139 = call i32 @inode_unlock(%struct.inode* %138)
  %140 = load i32, i32* %10, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %137, %135, %41, %27
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local %struct.inode* @file_inode(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext4_forced_shutdown(i32) #1

declare dso_local i32 @EXT4_SB(i32) #1

declare dso_local i32 @inode_trylock(%struct.inode*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @ext4_write_checks(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i64 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @is_sync_kiocb(%struct.kiocb*) #1

declare dso_local i64 @ext4_unaligned_aio(%struct.inode*, %struct.iov_iter*, i32) #1

declare dso_local i32 @ext4_unwritten_wait(%struct.inode*) #1

declare dso_local i64 @ext4_overwrite_io(%struct.inode*, i32, i32) #1

declare dso_local i32 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i64 @ext4_should_dioread_nolock(%struct.inode*) #1

declare dso_local i32 @__generic_file_write_iter(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @generic_write_sync(%struct.kiocb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
