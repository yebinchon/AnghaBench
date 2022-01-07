; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_free_mirror_array.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_free_mirror_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_ff_layout_segment = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_ff_layout_segment*)* @ff_layout_free_mirror_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ff_layout_free_mirror_array(%struct.nfs4_ff_layout_segment* %0) #0 {
  %2 = alloca %struct.nfs4_ff_layout_segment*, align 8
  %3 = alloca i32, align 4
  store %struct.nfs4_ff_layout_segment* %0, %struct.nfs4_ff_layout_segment** %2, align 8
  %4 = load %struct.nfs4_ff_layout_segment*, %struct.nfs4_ff_layout_segment** %2, align 8
  %5 = getelementptr inbounds %struct.nfs4_ff_layout_segment, %struct.nfs4_ff_layout_segment* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %34

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %24, %8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.nfs4_ff_layout_segment*, %struct.nfs4_ff_layout_segment** %2, align 8
  %12 = getelementptr inbounds %struct.nfs4_ff_layout_segment, %struct.nfs4_ff_layout_segment* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %9
  %16 = load %struct.nfs4_ff_layout_segment*, %struct.nfs4_ff_layout_segment** %2, align 8
  %17 = getelementptr inbounds %struct.nfs4_ff_layout_segment, %struct.nfs4_ff_layout_segment* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ff_layout_put_mirror(i32 %22)
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %9

27:                                               ; preds = %9
  %28 = load %struct.nfs4_ff_layout_segment*, %struct.nfs4_ff_layout_segment** %2, align 8
  %29 = getelementptr inbounds %struct.nfs4_ff_layout_segment, %struct.nfs4_ff_layout_segment* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @kfree(i32* %30)
  %32 = load %struct.nfs4_ff_layout_segment*, %struct.nfs4_ff_layout_segment** %2, align 8
  %33 = getelementptr inbounds %struct.nfs4_ff_layout_segment, %struct.nfs4_ff_layout_segment* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %27, %1
  ret void
}

declare dso_local i32 @ff_layout_put_mirror(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
