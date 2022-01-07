; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_scan.c_ubifs_start_scan.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_scan.c_ubifs_start_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_scan_leb = type { i32, i8*, i32 }
%struct.ubifs_info = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"scan LEB %d:%d\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"cannot read %d bytes from LEB %d:%d, error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ubifs_scan_leb* @ubifs_start_scan(%struct.ubifs_info* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.ubifs_scan_leb*, align 8
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ubifs_scan_leb*, align 8
  %11 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @dbg_scan(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load i32, i32* @GFP_NOFS, align 4
  %16 = call %struct.ubifs_scan_leb* @kzalloc(i32 24, i32 %15)
  store %struct.ubifs_scan_leb* %16, %struct.ubifs_scan_leb** %10, align 8
  %17 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %10, align 8
  %18 = icmp ne %struct.ubifs_scan_leb* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.ubifs_scan_leb* @ERR_PTR(i32 %21)
  store %struct.ubifs_scan_leb* %22, %struct.ubifs_scan_leb** %5, align 8
  br label %72

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %10, align 8
  %26 = getelementptr inbounds %struct.ubifs_scan_leb, %struct.ubifs_scan_leb* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %10, align 8
  %28 = getelementptr inbounds %struct.ubifs_scan_leb, %struct.ubifs_scan_leb* %27, i32 0, i32 2
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load i8*, i8** %9, align 8
  %31 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %10, align 8
  %32 = getelementptr inbounds %struct.ubifs_scan_leb, %struct.ubifs_scan_leb* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr i8, i8* %35, i64 %37
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %41 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %42, %44
  %46 = call i32 @ubifs_leb_read(%struct.ubifs_info* %33, i32 %34, i8* %38, i32 %39, i64 %45, i32 0)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %23
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @EBADMSG, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %49
  %55 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %56 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %57 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = sub nsw i64 %58, %60
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @ubifs_err(%struct.ubifs_info* %55, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %61, i32 %62, i32 %63, i32 %64)
  %66 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %10, align 8
  %67 = call i32 @kfree(%struct.ubifs_scan_leb* %66)
  %68 = load i32, i32* %11, align 4
  %69 = call %struct.ubifs_scan_leb* @ERR_PTR(i32 %68)
  store %struct.ubifs_scan_leb* %69, %struct.ubifs_scan_leb** %5, align 8
  br label %72

70:                                               ; preds = %49, %23
  %71 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %10, align 8
  store %struct.ubifs_scan_leb* %71, %struct.ubifs_scan_leb** %5, align 8
  br label %72

72:                                               ; preds = %70, %54, %19
  %73 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %5, align 8
  ret %struct.ubifs_scan_leb* %73
}

declare dso_local i32 @dbg_scan(i8*, i32, i32) #1

declare dso_local %struct.ubifs_scan_leb* @kzalloc(i32, i32) #1

declare dso_local %struct.ubifs_scan_leb* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ubifs_leb_read(%struct.ubifs_info*, i32, i8*, i32, i64, i32) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ubifs_scan_leb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
