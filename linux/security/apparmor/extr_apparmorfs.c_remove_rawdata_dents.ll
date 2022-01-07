; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_remove_rawdata_dents.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_remove_rawdata_dents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_loaddata = type { i32** }

@AAFS_LOADDATA_NDENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aa_loaddata*)* @remove_rawdata_dents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_rawdata_dents(%struct.aa_loaddata* %0) #0 {
  %2 = alloca %struct.aa_loaddata*, align 8
  %3 = alloca i32, align 4
  store %struct.aa_loaddata* %0, %struct.aa_loaddata** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %34, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @AAFS_LOADDATA_NDENTS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %37

8:                                                ; preds = %4
  %9 = load %struct.aa_loaddata*, %struct.aa_loaddata** %2, align 8
  %10 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %9, i32 0, i32 0
  %11 = load i32**, i32*** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32*, i32** %11, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @IS_ERR_OR_NULL(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %8
  %19 = load %struct.aa_loaddata*, %struct.aa_loaddata** %2, align 8
  %20 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %19, i32 0, i32 0
  %21 = load i32**, i32*** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @aafs_remove(i32* %25)
  %27 = load %struct.aa_loaddata*, %struct.aa_loaddata** %2, align 8
  %28 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %27, i32 0, i32 0
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %18, %8
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %4

37:                                               ; preds = %4
  ret void
}

declare dso_local i32 @IS_ERR_OR_NULL(i32*) #1

declare dso_local i32 @aafs_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
