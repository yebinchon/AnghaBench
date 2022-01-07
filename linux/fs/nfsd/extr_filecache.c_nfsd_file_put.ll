; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_filecache.c_nfsd_file_put.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_filecache.c_nfsd_file_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd_file = type { i32 }

@NFSD_FILE_HASHED = common dso_local global i32 0, align 4
@NFSD_FILE_REFERENCED = common dso_local global i32 0, align 4
@NFSD_FILE_LAUNDRETTE_MAY_FLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsd_file_put(%struct.nfsd_file* %0) #0 {
  %2 = alloca %struct.nfsd_file*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.nfsd_file* %0, %struct.nfsd_file** %2, align 8
  %5 = load i32, i32* @NFSD_FILE_HASHED, align 4
  %6 = load %struct.nfsd_file*, %struct.nfsd_file** %2, align 8
  %7 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %6, i32 0, i32 0
  %8 = call i64 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %3, align 4
  %11 = load %struct.nfsd_file*, %struct.nfsd_file** %2, align 8
  %12 = call i32 @nfsd_file_in_use(%struct.nfsd_file* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @NFSD_FILE_REFERENCED, align 4
  %17 = load %struct.nfsd_file*, %struct.nfsd_file** %2, align 8
  %18 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %17, i32 0, i32 0
  %19 = call i32 @set_bit(i32 %16, i32* %18)
  %20 = load %struct.nfsd_file*, %struct.nfsd_file** %2, align 8
  %21 = call i32 @nfsd_file_put_noref(%struct.nfsd_file* %20)
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @NFSD_FILE_LAUNDRETTE_MAY_FLUSH, align 4
  %31 = call i32 @nfsd_file_schedule_laundrette(i32 %30)
  br label %32

32:                                               ; preds = %29, %26, %23, %1
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nfsd_file_in_use(%struct.nfsd_file*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @nfsd_file_put_noref(%struct.nfsd_file*) #1

declare dso_local i32 @nfsd_file_schedule_laundrette(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
