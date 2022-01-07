; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_mdio_entry.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_mdio_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mdio_device_id = common dso_local global i32 0, align 4
@phy_id = common dso_local global i32 0, align 4
@phy_id_mask = common dso_local global i32 0, align 4
@MDIO_MODULE_PREFIX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @do_mdio_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_mdio_entry(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* @mdio_device_id, align 4
  %10 = load i32, i32* @phy_id, align 4
  %11 = call i32 @DEF_FIELD(i8* %8, i32 %9, i32 %10)
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @mdio_device_id, align 4
  %14 = load i32, i32* @phy_id_mask, align 4
  %15 = call i32 @DEF_FIELD(i8* %12, i32 %13, i32 %14)
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** @MDIO_MODULE_PREFIX, align 8
  %18 = call i32 @sprintf(i8* %16, i8* %17)
  %19 = load i8*, i8** %6, align 8
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8* %21, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %50, %3
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 32
  br i1 %24, label %25, label %53

25:                                               ; preds = %22
  %26 = load i32, i32* @phy_id_mask, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 31, %27
  %29 = ashr i32 %26, %28
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %6, align 8
  store i8 63, i8* %33, align 1
  br label %49

35:                                               ; preds = %25
  %36 = load i32, i32* @phy_id, align 4
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 31, %37
  %39 = ashr i32 %36, %38
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %6, align 8
  store i8 49, i8* %43, align 1
  br label %48

45:                                               ; preds = %35
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %6, align 8
  store i8 48, i8* %46, align 1
  br label %48

48:                                               ; preds = %45, %42
  br label %49

49:                                               ; preds = %48, %32
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %22

53:                                               ; preds = %22
  %54 = load i8*, i8** %6, align 8
  store i8 0, i8* %54, align 1
  ret i32 1
}

declare dso_local i32 @DEF_FIELD(i8*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
