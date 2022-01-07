; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4layouts.c_layouts_overlapping.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4layouts.c_layouts_overlapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_layout = type { %struct.nfsd4_layout_seg }
%struct.nfsd4_layout_seg = type { i64, i64 }

@IOMODE_ANY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_layout*, %struct.nfsd4_layout_seg*)* @layouts_overlapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @layouts_overlapping(%struct.nfs4_layout* %0, %struct.nfsd4_layout_seg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs4_layout*, align 8
  %5 = alloca %struct.nfsd4_layout_seg*, align 8
  store %struct.nfs4_layout* %0, %struct.nfs4_layout** %4, align 8
  store %struct.nfsd4_layout_seg* %1, %struct.nfsd4_layout_seg** %5, align 8
  %6 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %5, align 8
  %7 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IOMODE_ANY, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %5, align 8
  %13 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.nfs4_layout*, %struct.nfs4_layout** %4, align 8
  %16 = getelementptr inbounds %struct.nfs4_layout, %struct.nfs4_layout* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %14, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %40

21:                                               ; preds = %11, %2
  %22 = load %struct.nfs4_layout*, %struct.nfs4_layout** %4, align 8
  %23 = getelementptr inbounds %struct.nfs4_layout, %struct.nfs4_layout* %22, i32 0, i32 0
  %24 = call i64 @layout_end(%struct.nfsd4_layout_seg* %23)
  %25 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %5, align 8
  %26 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sle i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %40

30:                                               ; preds = %21
  %31 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %5, align 8
  %32 = call i64 @layout_end(%struct.nfsd4_layout_seg* %31)
  %33 = load %struct.nfs4_layout*, %struct.nfs4_layout** %4, align 8
  %34 = getelementptr inbounds %struct.nfs4_layout, %struct.nfs4_layout* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sle i64 %32, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %40

39:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %38, %29, %20
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @layout_end(%struct.nfsd4_layout_seg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
