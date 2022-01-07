; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_io.c_ubifs_leb_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_io.c_ubifs_leb_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i64, i32, i32 }

@EROFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"writing %d bytes to LEB %d:%d failed, error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_leb_write(%struct.ubifs_info* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %5
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %20 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %18, %5
  %25 = phi i1 [ false, %5 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @ubifs_assert(%struct.ubifs_info* %13, i32 %26)
  %28 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %29 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @EROFS, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %71

35:                                               ; preds = %24
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %37 = call i32 @dbg_is_tst_rcvry(%struct.ubifs_info* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %41 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @ubi_leb_write(i32 %42, i32 %43, i8* %44, i32 %45, i32 %46)
  store i32 %47, i32* %12, align 4
  br label %55

48:                                               ; preds = %35
  %49 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @dbg_leb_write(%struct.ubifs_info* %49, i32 %50, i8* %51, i32 %52, i32 %53)
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %48, %39
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @ubifs_err(%struct.ubifs_info* %59, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @ubifs_ro_mode(%struct.ubifs_info* %65, i32 %66)
  %68 = call i32 (...) @dump_stack()
  br label %69

69:                                               ; preds = %58, %55
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %69, %32
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @dbg_is_tst_rcvry(%struct.ubifs_info*) #1

declare dso_local i32 @ubi_leb_write(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @dbg_leb_write(%struct.ubifs_info*, i32, i8*, i32, i32) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ubifs_ro_mode(%struct.ubifs_info*, i32) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
