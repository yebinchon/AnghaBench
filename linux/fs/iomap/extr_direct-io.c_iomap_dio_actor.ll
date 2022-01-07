; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_direct-io.c_iomap_dio_actor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_direct-io.c_iomap_dio_actor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.iomap = type { i32 }
%struct.iomap_dio = type { i32 }

@IOMAP_DIO_WRITE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32, i8*, %struct.iomap*)* @iomap_dio_actor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iomap_dio_actor(%struct.inode* %0, i32 %1, i32 %2, i8* %3, %struct.iomap* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.iomap*, align 8
  %12 = alloca %struct.iomap_dio*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.iomap* %4, %struct.iomap** %11, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = bitcast i8* %13 to %struct.iomap_dio*
  store %struct.iomap_dio* %14, %struct.iomap_dio** %12, align 8
  %15 = load %struct.iomap*, %struct.iomap** %11, align 8
  %16 = getelementptr inbounds %struct.iomap, %struct.iomap* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %65 [
    i32 131, label %18
    i32 128, label %33
    i32 129, label %51
    i32 130, label %58
  ]

18:                                               ; preds = %5
  %19 = load %struct.iomap_dio*, %struct.iomap_dio** %12, align 8
  %20 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IOMAP_DIO_WRITE, align 4
  %23 = and i32 %21, %22
  %24 = call i32 @WARN_ON_ONCE(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %69

29:                                               ; preds = %18
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.iomap_dio*, %struct.iomap_dio** %12, align 8
  %32 = call i32 @iomap_dio_hole_actor(i32 %30, %struct.iomap_dio* %31)
  store i32 %32, i32* %6, align 4
  br label %69

33:                                               ; preds = %5
  %34 = load %struct.iomap_dio*, %struct.iomap_dio** %12, align 8
  %35 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IOMAP_DIO_WRITE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.iomap_dio*, %struct.iomap_dio** %12, align 8
  %43 = call i32 @iomap_dio_hole_actor(i32 %41, %struct.iomap_dio* %42)
  store i32 %43, i32* %6, align 4
  br label %69

44:                                               ; preds = %33
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.iomap_dio*, %struct.iomap_dio** %12, align 8
  %49 = load %struct.iomap*, %struct.iomap** %11, align 8
  %50 = call i32 @iomap_dio_bio_actor(%struct.inode* %45, i32 %46, i32 %47, %struct.iomap_dio* %48, %struct.iomap* %49)
  store i32 %50, i32* %6, align 4
  br label %69

51:                                               ; preds = %5
  %52 = load %struct.inode*, %struct.inode** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.iomap_dio*, %struct.iomap_dio** %12, align 8
  %56 = load %struct.iomap*, %struct.iomap** %11, align 8
  %57 = call i32 @iomap_dio_bio_actor(%struct.inode* %52, i32 %53, i32 %54, %struct.iomap_dio* %55, %struct.iomap* %56)
  store i32 %57, i32* %6, align 4
  br label %69

58:                                               ; preds = %5
  %59 = load %struct.inode*, %struct.inode** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.iomap_dio*, %struct.iomap_dio** %12, align 8
  %63 = load %struct.iomap*, %struct.iomap** %11, align 8
  %64 = call i32 @iomap_dio_inline_actor(%struct.inode* %59, i32 %60, i32 %61, %struct.iomap_dio* %62, %struct.iomap* %63)
  store i32 %64, i32* %6, align 4
  br label %69

65:                                               ; preds = %5
  %66 = call i32 @WARN_ON_ONCE(i32 1)
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %65, %58, %51, %44, %40, %29, %26
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @iomap_dio_hole_actor(i32, %struct.iomap_dio*) #1

declare dso_local i32 @iomap_dio_bio_actor(%struct.inode*, i32, i32, %struct.iomap_dio*, %struct.iomap*) #1

declare dso_local i32 @iomap_dio_inline_actor(%struct.inode*, i32, i32, %struct.iomap_dio*, %struct.iomap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
