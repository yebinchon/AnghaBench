; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_check_permissions.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_check_permissions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__user_cap_header_struct = type { i32, i32 }
%struct.__user_cap_data_struct = type { i32 }

@_LINUX_CAPABILITY_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"capget(2) failed\00", align 1
@CAP_SYS_RAWIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"capget(CAP_SYS_RAWIO) failed, try \22# setcap cap_sys_rawio=ep %s\22\00", align 1
@progname = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"/dev/cpu/%d/msr\00", align 1
@base_cpu = common dso_local global i32 0, align 4
@R_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"/dev/cpu/0/msr open failed, try chown or chmod +r /dev/cpu/*/msr\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"... or simply run as root\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_permissions() #0 {
  %1 = alloca %struct.__user_cap_header_struct, align 4
  %2 = alloca %struct.__user_cap_header_struct*, align 8
  %3 = alloca %struct.__user_cap_data_struct, align 4
  %4 = alloca %struct.__user_cap_data_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [32 x i8], align 16
  store %struct.__user_cap_header_struct* %1, %struct.__user_cap_header_struct** %2, align 8
  store %struct.__user_cap_data_struct* %3, %struct.__user_cap_data_struct** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = call i32 (...) @getpid()
  %8 = load %struct.__user_cap_header_struct*, %struct.__user_cap_header_struct** %2, align 8
  %9 = getelementptr inbounds %struct.__user_cap_header_struct, %struct.__user_cap_header_struct* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @_LINUX_CAPABILITY_VERSION, align 4
  %11 = load %struct.__user_cap_header_struct*, %struct.__user_cap_header_struct** %2, align 8
  %12 = getelementptr inbounds %struct.__user_cap_header_struct, %struct.__user_cap_header_struct* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.__user_cap_header_struct*, %struct.__user_cap_header_struct** %2, align 8
  %14 = load %struct.__user_cap_data_struct*, %struct.__user_cap_data_struct** %4, align 8
  %15 = call i32 @capget(%struct.__user_cap_header_struct* %13, %struct.__user_cap_data_struct* %14)
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %0
  %18 = call i32 @err(i32 -6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %0
  %20 = load %struct.__user_cap_data_struct*, %struct.__user_cap_data_struct** %4, align 8
  %21 = getelementptr inbounds %struct.__user_cap_data_struct, %struct.__user_cap_data_struct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CAP_SYS_RAWIO, align 4
  %24 = shl i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @progname, align 4
  %31 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %27, %19
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %34 = load i32, i32* @base_cpu, align 4
  %35 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %37 = load i32, i32* @R_OK, align 4
  %38 = call i64 @euidaccess(i8* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  %43 = call i32 @warn(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %40, %32
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = call i64 (...) @getuid()
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %47
  br label %53

53:                                               ; preds = %52, %44
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 @exit(i32 -6) #3
  unreachable

58:                                               ; preds = %53
  ret void
}

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @capget(%struct.__user_cap_header_struct*, %struct.__user_cap_data_struct*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @euidaccess(i8*, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @getuid(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
