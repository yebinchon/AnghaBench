; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_lops.c_gfs2_log_get_bio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_lops.c_gfs2_log_get_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.gfs2_sbd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (%struct.gfs2_sbd*, i32, %struct.bio**, i32, i32*, i32)* @gfs2_log_get_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @gfs2_log_get_bio(%struct.gfs2_sbd* %0, i32 %1, %struct.bio** %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.gfs2_sbd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bio**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.bio*, align 8
  %15 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.bio** %2, %struct.bio*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.bio**, %struct.bio*** %10, align 8
  %17 = load %struct.bio*, %struct.bio** %16, align 8
  store %struct.bio* %17, %struct.bio** %14, align 8
  %18 = load %struct.bio*, %struct.bio** %14, align 8
  %19 = icmp ne %struct.bio* %18, null
  br i1 %19, label %20, label %40

20:                                               ; preds = %6
  %21 = load %struct.bio*, %struct.bio** %14, align 8
  %22 = call i32 @bio_end_sector(%struct.bio* %21)
  store i32 %22, i32* %15, align 4
  %23 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %24 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %15, align 4
  %27 = ashr i32 %26, %25
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %20
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load %struct.bio*, %struct.bio** %14, align 8
  store %struct.bio* %35, %struct.bio** %7, align 8
  br label %48

36:                                               ; preds = %31, %20
  %37 = load %struct.bio**, %struct.bio*** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @gfs2_log_submit_bio(%struct.bio** %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %6
  %41 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32*, i32** %12, align 8
  %44 = call %struct.bio* @gfs2_log_alloc_bio(%struct.gfs2_sbd* %41, i32 %42, i32* %43)
  %45 = load %struct.bio**, %struct.bio*** %10, align 8
  store %struct.bio* %44, %struct.bio** %45, align 8
  %46 = load %struct.bio**, %struct.bio*** %10, align 8
  %47 = load %struct.bio*, %struct.bio** %46, align 8
  store %struct.bio* %47, %struct.bio** %7, align 8
  br label %48

48:                                               ; preds = %40, %34
  %49 = load %struct.bio*, %struct.bio** %7, align 8
  ret %struct.bio* %49
}

declare dso_local i32 @bio_end_sector(%struct.bio*) #1

declare dso_local i32 @gfs2_log_submit_bio(%struct.bio**, i32) #1

declare dso_local %struct.bio* @gfs2_log_alloc_bio(%struct.gfs2_sbd*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
