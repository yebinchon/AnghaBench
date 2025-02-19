; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/mount/extr_unprivileged-remount-test.c_create_and_enter_userns.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/mount/extr_unprivileged-remount-test.c_create_and_enter_userns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLONE_NEWUSER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"unshare(CLONE_NEWUSER) failed: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"/proc/self/setgroups\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"deny\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"/proc/self/uid_map\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"0 %d 1\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"/proc/self/gid_map\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"setgid(0) failed %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"setuid(0) failed %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @create_and_enter_userns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_and_enter_userns() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @getuid()
  store i32 %3, i32* %1, align 4
  %4 = call i32 (...) @getgid()
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* @CLONE_NEWUSER, align 4
  %6 = call i64 @unshare(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load i32, i32* @errno, align 4
  %10 = call i32 @strerror(i32 %9)
  %11 = call i32 @die(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %8, %0
  %13 = call i32 @maybe_write_file(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @write_file(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @write_file(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %16)
  %18 = call i64 @setgid(i32 0)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load i32, i32* @errno, align 4
  %22 = call i32 @strerror(i32 %21)
  %23 = call i32 @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %20, %12
  %25 = call i64 @setuid(i32 0)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* @errno, align 4
  %29 = call i32 @strerror(i32 %28)
  %30 = call i32 @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %27, %24
  ret void
}

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @getgid(...) #1

declare dso_local i64 @unshare(i32) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @maybe_write_file(i8*, i8*) #1

declare dso_local i32 @write_file(i8*, i8*, i32) #1

declare dso_local i64 @setgid(i32) #1

declare dso_local i64 @setuid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
