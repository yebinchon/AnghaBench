; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_copy_do.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_copy_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_copy_state = type { i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_copy_state*, i8**, i32*)* @fuse_copy_do to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_copy_do(%struct.fuse_copy_state* %0, i8** %1, i32* %2) #0 {
  %4 = alloca %struct.fuse_copy_state*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.fuse_copy_state* %0, %struct.fuse_copy_state** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %4, align 8
  %13 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @min(i32 %11, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = icmp ne i8** %16, null
  br i1 %17, label %18, label %53

18:                                               ; preds = %3
  %19 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %4, align 8
  %20 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @kmap_atomic(i32 %21)
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %4, align 8
  %25 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr i8, i8* %23, i64 %27
  store i8* %28, i8** %9, align 8
  %29 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %4, align 8
  %30 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %18
  %34 = load i8*, i8** %9, align 8
  %35 = load i8**, i8*** %5, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @memcpy(i8* %34, i8* %36, i32 %37)
  br label %45

39:                                               ; preds = %18
  %40 = load i8**, i8*** %5, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @memcpy(i8* %41, i8* %42, i32 %43)
  br label %45

45:                                               ; preds = %39, %33
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @kunmap_atomic(i8* %46)
  %48 = load i32, i32* %7, align 4
  %49 = load i8**, i8*** %5, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = zext i32 %48 to i64
  %52 = getelementptr i8, i8* %50, i64 %51
  store i8* %52, i8** %49, align 8
  br label %53

53:                                               ; preds = %45, %3
  %54 = load i32, i32* %7, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %55, align 4
  %57 = sub i32 %56, %54
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %4, align 8
  %60 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %4, align 8
  %65 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @kmap_atomic(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
