; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_path.c_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_path.c_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }

@PATH_CONNECT_PATH = common dso_local global i32 0, align 4
@CHROOT_NSCONNECT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, i8*, i8**, i32, i8*)* @disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disconnect(%struct.path* %0, i8* %1, i8** %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.path*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @PATH_CONNECT_PATH, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %42, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @CHROOT_NSCONNECT, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @CHROOT_NSCONNECT, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.path*, %struct.path** %6, align 8
  %24 = getelementptr inbounds %struct.path, %struct.path* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @our_mnt(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %22, %16
  %29 = load i32, i32* @EACCES, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %11, align 4
  %31 = load i8**, i8*** %8, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 47
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load i8**, i8*** %8, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8**, i8*** %8, align 8
  store i8* %39, i8** %40, align 8
  br label %41

41:                                               ; preds = %36, %28
  br label %78

42:                                               ; preds = %22, %5
  %43 = load i8**, i8*** %8, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 47
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load i8**, i8*** %8, align 8
  %50 = load i8**, i8*** %8, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  %57 = call i32 @prepend(i8** %49, i32 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %48, %42
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %77, label %61

61:                                               ; preds = %58
  %62 = load i8*, i8** %10, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = load i8**, i8*** %8, align 8
  %66 = load i8**, i8*** %8, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = trunc i64 %71 to i32
  %73 = load i8*, i8** %10, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = call i32 @strlen(i8* %74)
  %76 = call i32 @prepend(i8** %65, i32 %72, i8* %73, i32 %75)
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %64, %61, %58
  br label %78

78:                                               ; preds = %77, %41
  %79 = load i32, i32* %11, align 4
  ret i32 %79
}

declare dso_local i64 @our_mnt(i32) #1

declare dso_local i32 @prepend(i8**, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
