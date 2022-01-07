; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_io.c_ubifs_leb_map.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_io.c_ubifs_leb_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i64, i32, i32 }

@EROFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"mapping LEB %d failed, error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_leb_map(%struct.ubifs_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %8 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %9 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %14 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %12, %2
  %19 = phi i1 [ false, %2 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @ubifs_assert(%struct.ubifs_info* %7, i32 %20)
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %23 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @EROFS, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %57

29:                                               ; preds = %18
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %31 = call i32 @dbg_is_tst_rcvry(%struct.ubifs_info* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %35 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @ubi_leb_map(i32 %36, i32 %37)
  store i32 %38, i32* %6, align 4
  br label %43

39:                                               ; preds = %29
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @dbg_leb_map(%struct.ubifs_info* %40, i32 %41)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %39, %33
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @ubifs_err(%struct.ubifs_info* %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @ubifs_ro_mode(%struct.ubifs_info* %51, i32 %52)
  %54 = call i32 (...) @dump_stack()
  br label %55

55:                                               ; preds = %46, %43
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %26
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @dbg_is_tst_rcvry(%struct.ubifs_info*) #1

declare dso_local i32 @ubi_leb_map(i32, i32) #1

declare dso_local i32 @dbg_leb_map(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32, i32) #1

declare dso_local i32 @ubifs_ro_mode(%struct.ubifs_info*, i32) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
