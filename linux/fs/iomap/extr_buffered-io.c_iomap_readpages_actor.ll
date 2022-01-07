; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_readpages_actor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_readpages_actor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.iomap = type { i32 }
%struct.iomap_readpage_ctx = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*, i64, i64, i8*, %struct.iomap*)* @iomap_readpages_actor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iomap_readpages_actor(%struct.inode* %0, i64 %1, i64 %2, i8* %3, %struct.iomap* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.iomap*, align 8
  %11 = alloca %struct.iomap_readpage_ctx*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.iomap* %4, %struct.iomap** %10, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.iomap_readpage_ctx*
  store %struct.iomap_readpage_ctx* %15, %struct.iomap_readpage_ctx** %11, align 8
  store i64 0, i64* %12, align 8
  br label %16

16:                                               ; preds = %82, %5
  %17 = load i64, i64* %12, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %86

20:                                               ; preds = %16
  %21 = load %struct.iomap_readpage_ctx*, %struct.iomap_readpage_ctx** %11, align 8
  %22 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %48

25:                                               ; preds = %20
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %12, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i64 @offset_in_page(i64 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %25
  %32 = load %struct.iomap_readpage_ctx*, %struct.iomap_readpage_ctx** %11, align 8
  %33 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.iomap_readpage_ctx*, %struct.iomap_readpage_ctx** %11, align 8
  %38 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @unlock_page(i32* %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.iomap_readpage_ctx*, %struct.iomap_readpage_ctx** %11, align 8
  %43 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @put_page(i32* %44)
  %46 = load %struct.iomap_readpage_ctx*, %struct.iomap_readpage_ctx** %11, align 8
  %47 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %46, i32 0, i32 1
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %41, %25, %20
  %49 = load %struct.iomap_readpage_ctx*, %struct.iomap_readpage_ctx** %11, align 8
  %50 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %71, label %53

53:                                               ; preds = %48
  %54 = load %struct.inode*, %struct.inode** %6, align 8
  %55 = load %struct.iomap_readpage_ctx*, %struct.iomap_readpage_ctx** %11, align 8
  %56 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i32* @iomap_next_page(%struct.inode* %54, i32 %57, i64 %58, i64 %59, i64* %12)
  %61 = load %struct.iomap_readpage_ctx*, %struct.iomap_readpage_ctx** %11, align 8
  %62 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %61, i32 0, i32 1
  store i32* %60, i32** %62, align 8
  %63 = load %struct.iomap_readpage_ctx*, %struct.iomap_readpage_ctx** %11, align 8
  %64 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %53
  br label %86

68:                                               ; preds = %53
  %69 = load %struct.iomap_readpage_ctx*, %struct.iomap_readpage_ctx** %11, align 8
  %70 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  br label %71

71:                                               ; preds = %68, %48
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* %12, align 8
  %75 = add nsw i64 %73, %74
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* %12, align 8
  %78 = sub nsw i64 %76, %77
  %79 = load %struct.iomap_readpage_ctx*, %struct.iomap_readpage_ctx** %11, align 8
  %80 = load %struct.iomap*, %struct.iomap** %10, align 8
  %81 = call i64 @iomap_readpage_actor(%struct.inode* %72, i64 %75, i64 %78, %struct.iomap_readpage_ctx* %79, %struct.iomap* %80)
  store i64 %81, i64* %13, align 8
  br label %82

82:                                               ; preds = %71
  %83 = load i64, i64* %13, align 8
  %84 = load i64, i64* %12, align 8
  %85 = add nsw i64 %84, %83
  store i64 %85, i64* %12, align 8
  br label %16

86:                                               ; preds = %67, %16
  %87 = load i64, i64* %12, align 8
  ret i64 %87
}

declare dso_local i64 @offset_in_page(i64) #1

declare dso_local i32 @unlock_page(i32*) #1

declare dso_local i32 @put_page(i32*) #1

declare dso_local i32* @iomap_next_page(%struct.inode*, i32, i64, i64, i64*) #1

declare dso_local i64 @iomap_readpage_actor(%struct.inode*, i64, i64, %struct.iomap_readpage_ctx*, %struct.iomap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
