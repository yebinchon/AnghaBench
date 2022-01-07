; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lprops.c_ubifs_ensure_cat.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lprops.c_ubifs_ensure_cat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_lprops = type { i32 }

@LPROPS_CAT_MASK = common dso_local global i32 0, align 4
@LPROPS_UNCAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_ensure_cat(%struct.ubifs_info* %0, %struct.ubifs_lprops* %1) #0 {
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_lprops*, align 8
  %5 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store %struct.ubifs_lprops* %1, %struct.ubifs_lprops** %4, align 8
  %6 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %7 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @LPROPS_CAT_MASK, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @LPROPS_UNCAT, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %32

15:                                               ; preds = %2
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %17 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %18 = call i32 @ubifs_categorize_lprops(%struct.ubifs_info* %16, %struct.ubifs_lprops* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @LPROPS_UNCAT, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %32

23:                                               ; preds = %15
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %25 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %26 = load i32, i32* @LPROPS_UNCAT, align 4
  %27 = call i32 @ubifs_remove_from_cat(%struct.ubifs_info* %24, %struct.ubifs_lprops* %25, i32 %26)
  %28 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %29 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @ubifs_add_to_cat(%struct.ubifs_info* %28, %struct.ubifs_lprops* %29, i32 %30)
  br label %32

32:                                               ; preds = %23, %22, %14
  ret void
}

declare dso_local i32 @ubifs_categorize_lprops(%struct.ubifs_info*, %struct.ubifs_lprops*) #1

declare dso_local i32 @ubifs_remove_from_cat(%struct.ubifs_info*, %struct.ubifs_lprops*, i32) #1

declare dso_local i32 @ubifs_add_to_cat(%struct.ubifs_info*, %struct.ubifs_lprops*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
