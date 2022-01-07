; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_stack_user.c_ocfs2_control_do_down_msg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_stack_user.c_ocfs2_control_do_down_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.ocfs2_control_message_down = type { i8, i8, i8, i32, i32, i32 }

@OCFS2_CONTROL_HANDSHAKE_VALID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@OCFS2_CONTROL_MESSAGE_DOWN_OP = common dso_local global i32 0, align 4
@OCFS2_CONTROL_MESSAGE_OP_LEN = common dso_local global i32 0, align 4
@LONG_MIN = common dso_local global i64 0, align 8
@LONG_MAX = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.ocfs2_control_message_down*)* @ocfs2_control_do_down_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_control_do_down_msg(%struct.file* %0, %struct.ocfs2_control_message_down* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.ocfs2_control_message_down*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.ocfs2_control_message_down* %1, %struct.ocfs2_control_message_down** %5, align 8
  store i8* null, i8** %7, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call i64 @ocfs2_control_get_handshake_state(%struct.file* %8)
  %10 = load i64, i64* @OCFS2_CONTROL_HANDSHAKE_VALID, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %92

15:                                               ; preds = %2
  %16 = load %struct.ocfs2_control_message_down*, %struct.ocfs2_control_message_down** %5, align 8
  %17 = getelementptr inbounds %struct.ocfs2_control_message_down, %struct.ocfs2_control_message_down* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @OCFS2_CONTROL_MESSAGE_DOWN_OP, align 4
  %20 = load i32, i32* @OCFS2_CONTROL_MESSAGE_OP_LEN, align 4
  %21 = call i64 @strncmp(i32 %18, i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %92

26:                                               ; preds = %15
  %27 = load %struct.ocfs2_control_message_down*, %struct.ocfs2_control_message_down** %5, align 8
  %28 = getelementptr inbounds %struct.ocfs2_control_message_down, %struct.ocfs2_control_message_down* %27, i32 0, i32 0
  %29 = load i8, i8* %28, align 4
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 32
  br i1 %31, label %44, label %32

32:                                               ; preds = %26
  %33 = load %struct.ocfs2_control_message_down*, %struct.ocfs2_control_message_down** %5, align 8
  %34 = getelementptr inbounds %struct.ocfs2_control_message_down, %struct.ocfs2_control_message_down* %33, i32 0, i32 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 32
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.ocfs2_control_message_down*, %struct.ocfs2_control_message_down** %5, align 8
  %40 = getelementptr inbounds %struct.ocfs2_control_message_down, %struct.ocfs2_control_message_down* %39, i32 0, i32 2
  %41 = load i8, i8* %40, align 2
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 10
  br i1 %43, label %44, label %47

44:                                               ; preds = %38, %32, %26
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %92

47:                                               ; preds = %38
  %48 = load %struct.ocfs2_control_message_down*, %struct.ocfs2_control_message_down** %5, align 8
  %49 = getelementptr inbounds %struct.ocfs2_control_message_down, %struct.ocfs2_control_message_down* %48, i32 0, i32 2
  store i8 0, i8* %49, align 2
  %50 = load %struct.ocfs2_control_message_down*, %struct.ocfs2_control_message_down** %5, align 8
  %51 = getelementptr inbounds %struct.ocfs2_control_message_down, %struct.ocfs2_control_message_down* %50, i32 0, i32 1
  store i8 0, i8* %51, align 1
  %52 = load %struct.ocfs2_control_message_down*, %struct.ocfs2_control_message_down** %5, align 8
  %53 = getelementptr inbounds %struct.ocfs2_control_message_down, %struct.ocfs2_control_message_down* %52, i32 0, i32 0
  store i8 0, i8* %53, align 4
  %54 = load %struct.ocfs2_control_message_down*, %struct.ocfs2_control_message_down** %5, align 8
  %55 = getelementptr inbounds %struct.ocfs2_control_message_down, %struct.ocfs2_control_message_down* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @simple_strtol(i32 %56, i8** %7, i32 16)
  store i64 %57, i64* %6, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %47
  %61 = load i8*, i8** %7, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60, %47
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %92

68:                                               ; preds = %60
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* @LONG_MIN, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %83, label %72

72:                                               ; preds = %68
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* @LONG_MAX, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %83, label %76

76:                                               ; preds = %72
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* @INT_MAX, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = load i64, i64* %6, align 8
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80, %76, %72, %68
  %84 = load i32, i32* @ERANGE, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %92

86:                                               ; preds = %80
  %87 = load %struct.ocfs2_control_message_down*, %struct.ocfs2_control_message_down** %5, align 8
  %88 = getelementptr inbounds %struct.ocfs2_control_message_down, %struct.ocfs2_control_message_down* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i64, i64* %6, align 8
  %91 = call i32 @ocfs2_control_send_down(i32 %89, i64 %90)
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %86, %83, %65, %44, %23, %12
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i64 @ocfs2_control_get_handshake_state(%struct.file*) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i64 @simple_strtol(i32, i8**, i32) #1

declare dso_local i32 @ocfs2_control_send_down(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
