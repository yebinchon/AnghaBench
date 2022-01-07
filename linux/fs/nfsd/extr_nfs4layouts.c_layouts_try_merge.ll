; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4layouts.c_layouts_try_merge.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4layouts.c_layouts_try_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_layout_seg = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg*)* @layouts_try_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @layouts_try_merge(%struct.nfsd4_layout_seg* %0, %struct.nfsd4_layout_seg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsd4_layout_seg*, align 8
  %5 = alloca %struct.nfsd4_layout_seg*, align 8
  store %struct.nfsd4_layout_seg* %0, %struct.nfsd4_layout_seg** %4, align 8
  store %struct.nfsd4_layout_seg* %1, %struct.nfsd4_layout_seg** %5, align 8
  %6 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %4, align 8
  %7 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %5, align 8
  %10 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

14:                                               ; preds = %2
  %15 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %5, align 8
  %16 = call i64 @layout_end(%struct.nfsd4_layout_seg* %15)
  %17 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %4, align 8
  %18 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %47

22:                                               ; preds = %14
  %23 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %4, align 8
  %24 = call i64 @layout_end(%struct.nfsd4_layout_seg* %23)
  %25 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %5, align 8
  %26 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %47

30:                                               ; preds = %22
  %31 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %4, align 8
  %32 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %5, align 8
  %35 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @min(i64 %33, i64 %36)
  %38 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %4, align 8
  %39 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %4, align 8
  %41 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %4, align 8
  %42 = call i64 @layout_end(%struct.nfsd4_layout_seg* %41)
  %43 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %5, align 8
  %44 = call i64 @layout_end(%struct.nfsd4_layout_seg* %43)
  %45 = call i32 @max(i64 %42, i64 %44)
  %46 = call i32 @layout_update_len(%struct.nfsd4_layout_seg* %40, i32 %45)
  store i32 1, i32* %3, align 4
  br label %47

47:                                               ; preds = %30, %29, %21, %13
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @layout_end(%struct.nfsd4_layout_seg*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @layout_update_len(%struct.nfsd4_layout_seg*, i32) #1

declare dso_local i32 @max(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
