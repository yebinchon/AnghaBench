; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_stack_user.c_ocfs2_control_do_setnode_msg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_stack_user.c_ocfs2_control_do_setnode_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.ocfs2_control_private* }
%struct.ocfs2_control_private = type { i64 }
%struct.ocfs2_control_message_setn = type { i8, i8, i32, i32 }

@OCFS2_CONTROL_HANDSHAKE_PROTOCOL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@OCFS2_CONTROL_MESSAGE_SETNODE_OP = common dso_local global i32 0, align 4
@OCFS2_CONTROL_MESSAGE_OP_LEN = common dso_local global i32 0, align 4
@LONG_MIN = common dso_local global i64 0, align 8
@LONG_MAX = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.ocfs2_control_message_setn*)* @ocfs2_control_do_setnode_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_control_do_setnode_msg(%struct.file* %0, %struct.ocfs2_control_message_setn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.ocfs2_control_message_setn*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ocfs2_control_private*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.ocfs2_control_message_setn* %1, %struct.ocfs2_control_message_setn** %5, align 8
  store i8* null, i8** %7, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.ocfs2_control_private*, %struct.ocfs2_control_private** %10, align 8
  store %struct.ocfs2_control_private* %11, %struct.ocfs2_control_private** %8, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = call i64 @ocfs2_control_get_handshake_state(%struct.file* %12)
  %14 = load i64, i64* @OCFS2_CONTROL_HANDSHAKE_PROTOCOL, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %88

19:                                               ; preds = %2
  %20 = load %struct.ocfs2_control_message_setn*, %struct.ocfs2_control_message_setn** %5, align 8
  %21 = getelementptr inbounds %struct.ocfs2_control_message_setn, %struct.ocfs2_control_message_setn* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @OCFS2_CONTROL_MESSAGE_SETNODE_OP, align 4
  %24 = load i32, i32* @OCFS2_CONTROL_MESSAGE_OP_LEN, align 4
  %25 = call i64 @strncmp(i32 %22, i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %88

30:                                               ; preds = %19
  %31 = load %struct.ocfs2_control_message_setn*, %struct.ocfs2_control_message_setn** %5, align 8
  %32 = getelementptr inbounds %struct.ocfs2_control_message_setn, %struct.ocfs2_control_message_setn* %31, i32 0, i32 0
  %33 = load i8, i8* %32, align 4
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 32
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.ocfs2_control_message_setn*, %struct.ocfs2_control_message_setn** %5, align 8
  %38 = getelementptr inbounds %struct.ocfs2_control_message_setn, %struct.ocfs2_control_message_setn* %37, i32 0, i32 1
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 10
  br i1 %41, label %42, label %45

42:                                               ; preds = %36, %30
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %88

45:                                               ; preds = %36
  %46 = load %struct.ocfs2_control_message_setn*, %struct.ocfs2_control_message_setn** %5, align 8
  %47 = getelementptr inbounds %struct.ocfs2_control_message_setn, %struct.ocfs2_control_message_setn* %46, i32 0, i32 1
  store i8 0, i8* %47, align 1
  %48 = load %struct.ocfs2_control_message_setn*, %struct.ocfs2_control_message_setn** %5, align 8
  %49 = getelementptr inbounds %struct.ocfs2_control_message_setn, %struct.ocfs2_control_message_setn* %48, i32 0, i32 0
  store i8 0, i8* %49, align 4
  %50 = load %struct.ocfs2_control_message_setn*, %struct.ocfs2_control_message_setn** %5, align 8
  %51 = getelementptr inbounds %struct.ocfs2_control_message_setn, %struct.ocfs2_control_message_setn* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @simple_strtol(i32 %52, i8** %7, i32 16)
  store i64 %53, i64* %6, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %45
  %57 = load i8*, i8** %7, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56, %45
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %88

64:                                               ; preds = %56
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* @LONG_MIN, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %79, label %68

68:                                               ; preds = %64
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* @LONG_MAX, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %79, label %72

72:                                               ; preds = %68
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* @INT_MAX, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = load i64, i64* %6, align 8
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76, %72, %68, %64
  %80 = load i32, i32* @ERANGE, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %88

82:                                               ; preds = %76
  %83 = load i64, i64* %6, align 8
  %84 = load %struct.ocfs2_control_private*, %struct.ocfs2_control_private** %8, align 8
  %85 = getelementptr inbounds %struct.ocfs2_control_private, %struct.ocfs2_control_private* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.file*, %struct.file** %4, align 8
  %87 = call i32 @ocfs2_control_install_private(%struct.file* %86)
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %82, %79, %61, %42, %27, %16
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i64 @ocfs2_control_get_handshake_state(%struct.file*) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i64 @simple_strtol(i32, i8**, i32) #1

declare dso_local i32 @ocfs2_control_install_private(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
