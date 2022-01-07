; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_dio_end_io.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_dio_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.f2fs_private_dio* }
%struct.f2fs_private_dio = type { i32, %struct.f2fs_private_dio*, i64, i32 }

@F2FS_DIO_WRITE = common dso_local global i32 0, align 4
@F2FS_DIO_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @f2fs_dio_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f2fs_dio_end_io(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.f2fs_private_dio*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %4 = load %struct.bio*, %struct.bio** %2, align 8
  %5 = getelementptr inbounds %struct.bio, %struct.bio* %4, i32 0, i32 1
  %6 = load %struct.f2fs_private_dio*, %struct.f2fs_private_dio** %5, align 8
  store %struct.f2fs_private_dio* %6, %struct.f2fs_private_dio** %3, align 8
  %7 = load %struct.f2fs_private_dio*, %struct.f2fs_private_dio** %3, align 8
  %8 = getelementptr inbounds %struct.f2fs_private_dio, %struct.f2fs_private_dio* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @F2FS_I_SB(i32 %9)
  %11 = load %struct.f2fs_private_dio*, %struct.f2fs_private_dio** %3, align 8
  %12 = getelementptr inbounds %struct.f2fs_private_dio, %struct.f2fs_private_dio* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @F2FS_DIO_WRITE, align 4
  br label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @F2FS_DIO_READ, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = call i32 @dec_page_count(i32 %10, i32 %20)
  %22 = load %struct.f2fs_private_dio*, %struct.f2fs_private_dio** %3, align 8
  %23 = getelementptr inbounds %struct.f2fs_private_dio, %struct.f2fs_private_dio* %22, i32 0, i32 1
  %24 = load %struct.f2fs_private_dio*, %struct.f2fs_private_dio** %23, align 8
  %25 = load %struct.bio*, %struct.bio** %2, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 1
  store %struct.f2fs_private_dio* %24, %struct.f2fs_private_dio** %26, align 8
  %27 = load %struct.f2fs_private_dio*, %struct.f2fs_private_dio** %3, align 8
  %28 = getelementptr inbounds %struct.f2fs_private_dio, %struct.f2fs_private_dio* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.bio*, %struct.bio** %2, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.f2fs_private_dio*, %struct.f2fs_private_dio** %3, align 8
  %33 = call i32 @kvfree(%struct.f2fs_private_dio* %32)
  %34 = load %struct.bio*, %struct.bio** %2, align 8
  %35 = call i32 @bio_endio(%struct.bio* %34)
  ret void
}

declare dso_local i32 @dec_page_count(i32, i32) #1

declare dso_local i32 @F2FS_I_SB(i32) #1

declare dso_local i32 @kvfree(%struct.f2fs_private_dio*) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
