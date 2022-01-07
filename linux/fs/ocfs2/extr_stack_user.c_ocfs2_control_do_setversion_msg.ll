; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_stack_user.c_ocfs2_control_do_setversion_msg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_stack_user.c_ocfs2_control_do_setversion_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.ocfs2_protocol_version }
%struct.ocfs2_protocol_version = type { i64, i64 }
%struct.file = type { %struct.ocfs2_control_private* }
%struct.ocfs2_control_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.ocfs2_control_message_setv = type { i8, i8, i8, i32, i32, i32 }

@ocfs2_user_plugin = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@OCFS2_CONTROL_HANDSHAKE_PROTOCOL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@OCFS2_CONTROL_MESSAGE_SETVERSION_OP = common dso_local global i32 0, align 4
@OCFS2_CONTROL_MESSAGE_OP_LEN = common dso_local global i32 0, align 4
@LONG_MIN = common dso_local global i64 0, align 8
@LONG_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.ocfs2_control_message_setv*)* @ocfs2_control_do_setversion_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_control_do_setversion_msg(%struct.file* %0, %struct.ocfs2_control_message_setv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.ocfs2_control_message_setv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ocfs2_control_private*, align 8
  %10 = alloca %struct.ocfs2_protocol_version*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.ocfs2_control_message_setv* %1, %struct.ocfs2_control_message_setv** %5, align 8
  store i8* null, i8** %8, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.ocfs2_control_private*, %struct.ocfs2_control_private** %12, align 8
  store %struct.ocfs2_control_private* %13, %struct.ocfs2_control_private** %9, align 8
  store %struct.ocfs2_protocol_version* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ocfs2_user_plugin, i32 0, i32 0), %struct.ocfs2_protocol_version** %10, align 8
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = call i64 @ocfs2_control_get_handshake_state(%struct.file* %14)
  %16 = load i64, i64* @OCFS2_CONTROL_HANDSHAKE_PROTOCOL, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %149

21:                                               ; preds = %2
  %22 = load %struct.ocfs2_control_message_setv*, %struct.ocfs2_control_message_setv** %5, align 8
  %23 = getelementptr inbounds %struct.ocfs2_control_message_setv, %struct.ocfs2_control_message_setv* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @OCFS2_CONTROL_MESSAGE_SETVERSION_OP, align 4
  %26 = load i32, i32* @OCFS2_CONTROL_MESSAGE_OP_LEN, align 4
  %27 = call i64 @strncmp(i32 %24, i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %149

32:                                               ; preds = %21
  %33 = load %struct.ocfs2_control_message_setv*, %struct.ocfs2_control_message_setv** %5, align 8
  %34 = getelementptr inbounds %struct.ocfs2_control_message_setv, %struct.ocfs2_control_message_setv* %33, i32 0, i32 0
  %35 = load i8, i8* %34, align 4
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 32
  br i1 %37, label %50, label %38

38:                                               ; preds = %32
  %39 = load %struct.ocfs2_control_message_setv*, %struct.ocfs2_control_message_setv** %5, align 8
  %40 = getelementptr inbounds %struct.ocfs2_control_message_setv, %struct.ocfs2_control_message_setv* %39, i32 0, i32 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 32
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.ocfs2_control_message_setv*, %struct.ocfs2_control_message_setv** %5, align 8
  %46 = getelementptr inbounds %struct.ocfs2_control_message_setv, %struct.ocfs2_control_message_setv* %45, i32 0, i32 2
  %47 = load i8, i8* %46, align 2
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 10
  br i1 %49, label %50, label %53

50:                                               ; preds = %44, %38, %32
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %149

53:                                               ; preds = %44
  %54 = load %struct.ocfs2_control_message_setv*, %struct.ocfs2_control_message_setv** %5, align 8
  %55 = getelementptr inbounds %struct.ocfs2_control_message_setv, %struct.ocfs2_control_message_setv* %54, i32 0, i32 2
  store i8 0, i8* %55, align 2
  %56 = load %struct.ocfs2_control_message_setv*, %struct.ocfs2_control_message_setv** %5, align 8
  %57 = getelementptr inbounds %struct.ocfs2_control_message_setv, %struct.ocfs2_control_message_setv* %56, i32 0, i32 1
  store i8 0, i8* %57, align 1
  %58 = load %struct.ocfs2_control_message_setv*, %struct.ocfs2_control_message_setv** %5, align 8
  %59 = getelementptr inbounds %struct.ocfs2_control_message_setv, %struct.ocfs2_control_message_setv* %58, i32 0, i32 0
  store i8 0, i8* %59, align 4
  %60 = load %struct.ocfs2_control_message_setv*, %struct.ocfs2_control_message_setv** %5, align 8
  %61 = getelementptr inbounds %struct.ocfs2_control_message_setv, %struct.ocfs2_control_message_setv* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @simple_strtol(i32 %62, i8** %8, i32 16)
  store i64 %63, i64* %6, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %53
  %67 = load i8*, i8** %8, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66, %53
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %149

74:                                               ; preds = %66
  %75 = load %struct.ocfs2_control_message_setv*, %struct.ocfs2_control_message_setv** %5, align 8
  %76 = getelementptr inbounds %struct.ocfs2_control_message_setv, %struct.ocfs2_control_message_setv* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @simple_strtol(i32 %77, i8** %8, i32 16)
  store i64 %78, i64* %7, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = load i8*, i8** %8, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81, %74
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %149

89:                                               ; preds = %81
  %90 = load i64, i64* %6, align 8
  %91 = load i64, i64* @LONG_MIN, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %103, label %93

93:                                               ; preds = %89
  %94 = load i64, i64* %6, align 8
  %95 = load i64, i64* @LONG_MAX, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %103, label %97

97:                                               ; preds = %93
  %98 = load i64, i64* %6, align 8
  %99 = icmp sgt i64 %98, -1
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i64, i64* %6, align 8
  %102 = icmp slt i64 %101, 1
  br i1 %102, label %103, label %106

103:                                              ; preds = %100, %97, %93, %89
  %104 = load i32, i32* @ERANGE, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %149

106:                                              ; preds = %100
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* @LONG_MIN, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %120, label %110

110:                                              ; preds = %106
  %111 = load i64, i64* %7, align 8
  %112 = load i64, i64* @LONG_MAX, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %120, label %114

114:                                              ; preds = %110
  %115 = load i64, i64* %7, align 8
  %116 = icmp sgt i64 %115, -1
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load i64, i64* %7, align 8
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117, %114, %110, %106
  %121 = load i32, i32* @ERANGE, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %149

123:                                              ; preds = %117
  %124 = load i64, i64* %6, align 8
  %125 = load %struct.ocfs2_protocol_version*, %struct.ocfs2_protocol_version** %10, align 8
  %126 = getelementptr inbounds %struct.ocfs2_protocol_version, %struct.ocfs2_protocol_version* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %124, %127
  br i1 %128, label %135, label %129

129:                                              ; preds = %123
  %130 = load i64, i64* %7, align 8
  %131 = load %struct.ocfs2_protocol_version*, %struct.ocfs2_protocol_version** %10, align 8
  %132 = getelementptr inbounds %struct.ocfs2_protocol_version, %struct.ocfs2_protocol_version* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp sgt i64 %130, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %129, %123
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %3, align 4
  br label %149

138:                                              ; preds = %129
  %139 = load i64, i64* %6, align 8
  %140 = load %struct.ocfs2_control_private*, %struct.ocfs2_control_private** %9, align 8
  %141 = getelementptr inbounds %struct.ocfs2_control_private, %struct.ocfs2_control_private* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  store i64 %139, i64* %142, align 8
  %143 = load i64, i64* %7, align 8
  %144 = load %struct.ocfs2_control_private*, %struct.ocfs2_control_private** %9, align 8
  %145 = getelementptr inbounds %struct.ocfs2_control_private, %struct.ocfs2_control_private* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  store i64 %143, i64* %146, align 8
  %147 = load %struct.file*, %struct.file** %4, align 8
  %148 = call i32 @ocfs2_control_install_private(%struct.file* %147)
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %138, %135, %120, %103, %86, %71, %50, %29, %18
  %150 = load i32, i32* %3, align 4
  ret i32 %150
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
