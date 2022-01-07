; ModuleID = '/home/carl/AnghaBench/linux/init/extr_do_mounts_initrd.c_init_linuxrc.c'
source_filename = "/home/carl/AnghaBench/linux/init/extr_do_mounts_initrd.c_init_linuxrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subprocess_info = type { i32 }
%struct.cred = type { i32 }

@CLONE_FS = common dso_local global i32 0, align 4
@CLONE_FILES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"/dev/console\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"/root\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@MS_MOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.subprocess_info*, %struct.cred*)* @init_linuxrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_linuxrc(%struct.subprocess_info* %0, %struct.cred* %1) #0 {
  %3 = alloca %struct.subprocess_info*, align 8
  %4 = alloca %struct.cred*, align 8
  store %struct.subprocess_info* %0, %struct.subprocess_info** %3, align 8
  store %struct.cred* %1, %struct.cred** %4, align 8
  %5 = load i32, i32* @CLONE_FS, align 4
  %6 = load i32, i32* @CLONE_FILES, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @ksys_unshare(i32 %7)
  %9 = load i32, i32* @O_RDWR, align 4
  %10 = call i32 @ksys_open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %9, i32 0)
  %11 = call i32 @ksys_dup(i32 0)
  %12 = call i32 @ksys_dup(i32 0)
  %13 = call i32 @ksys_chdir(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @MS_MOVE, align 4
  %15 = call i32 @ksys_mount(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %14, i32* null)
  %16 = call i32 @ksys_chroot(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %17 = call i32 (...) @ksys_setsid()
  ret i32 0
}

declare dso_local i32 @ksys_unshare(i32) #1

declare dso_local i32 @ksys_open(i8*, i32, i32) #1

declare dso_local i32 @ksys_dup(i32) #1

declare dso_local i32 @ksys_chdir(i8*) #1

declare dso_local i32 @ksys_mount(i8*, i8*, i32*, i32, i32*) #1

declare dso_local i32 @ksys_chroot(i8*) #1

declare dso_local i32 @ksys_setsid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
