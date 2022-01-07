; ModuleID = '/home/carl/AnghaBench/linux/samples/seccomp/extr_user-trap.c_handle_req.c'
source_filename = "/home/carl/AnghaBench/linux/samples/seccomp/extr_user-trap.c_handle_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seccomp_notif = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32* }
%struct.seccomp_notif_resp = type { i32, i64, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@__NR_mount = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"huh? trapped something besides mount? %d\0A\00", align 1
@MS_BIND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"/proc/%d/mem\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"open mem\00", align 1
@SECCOMP_IOCTL_NOTIF_ID_VALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"task died before we could map its memory\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"seek\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"/tmp/\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"actual mount\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seccomp_notif*, %struct.seccomp_notif_resp*, i32)* @handle_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_req(%struct.seccomp_notif* %0, %struct.seccomp_notif_resp* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.seccomp_notif*, align 8
  %6 = alloca %struct.seccomp_notif_resp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.seccomp_notif* %0, %struct.seccomp_notif** %5, align 8
  store %struct.seccomp_notif_resp* %1, %struct.seccomp_notif_resp** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @PATH_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* @PATH_MAX, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %22 = load i32, i32* @PATH_MAX, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %11, align 8
  store i32 -1, i32* %12, align 4
  %25 = load %struct.seccomp_notif*, %struct.seccomp_notif** %5, align 8
  %26 = getelementptr inbounds %struct.seccomp_notif, %struct.seccomp_notif* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.seccomp_notif_resp*, %struct.seccomp_notif_resp** %6, align 8
  %29 = getelementptr inbounds %struct.seccomp_notif_resp, %struct.seccomp_notif_resp* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @EPERM, align 4
  %31 = sub nsw i32 0, %30
  %32 = load %struct.seccomp_notif_resp*, %struct.seccomp_notif_resp** %6, align 8
  %33 = getelementptr inbounds %struct.seccomp_notif_resp, %struct.seccomp_notif_resp* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.seccomp_notif_resp*, %struct.seccomp_notif_resp** %6, align 8
  %35 = getelementptr inbounds %struct.seccomp_notif_resp, %struct.seccomp_notif_resp* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.seccomp_notif*, %struct.seccomp_notif** %5, align 8
  %37 = getelementptr inbounds %struct.seccomp_notif, %struct.seccomp_notif* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @__NR_mount, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %3
  %43 = load i32, i32* @stderr, align 4
  %44 = load %struct.seccomp_notif*, %struct.seccomp_notif** %5, align 8
  %45 = getelementptr inbounds %struct.seccomp_notif, %struct.seccomp_notif* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %47)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %149

49:                                               ; preds = %3
  %50 = load %struct.seccomp_notif*, %struct.seccomp_notif** %5, align 8
  %51 = getelementptr inbounds %struct.seccomp_notif, %struct.seccomp_notif* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MS_BIND, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %149

60:                                               ; preds = %49
  %61 = trunc i64 %16 to i32
  %62 = load %struct.seccomp_notif*, %struct.seccomp_notif** %5, align 8
  %63 = getelementptr inbounds %struct.seccomp_notif, %struct.seccomp_notif* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @snprintf(i8* %18, i32 %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @O_RDONLY, align 4
  %67 = call i32 @open(i8* %18, i32 %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %149

72:                                               ; preds = %60
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @SECCOMP_IOCTL_NOTIF_ID_VALID, align 4
  %75 = load %struct.seccomp_notif*, %struct.seccomp_notif** %5, align 8
  %76 = getelementptr inbounds %struct.seccomp_notif, %struct.seccomp_notif* %75, i32 0, i32 2
  %77 = call i64 @ioctl(i32 %73, i32 %74, i32* %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i32, i32* @stderr, align 4
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %145

82:                                               ; preds = %72
  %83 = load i32, i32* %13, align 4
  %84 = load %struct.seccomp_notif*, %struct.seccomp_notif** %5, align 8
  %85 = getelementptr inbounds %struct.seccomp_notif, %struct.seccomp_notif* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @SEEK_SET, align 4
  %91 = call i64 @lseek(i32 %83, i32 %89, i32 %90)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %82
  %94 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %145

95:                                               ; preds = %82
  %96 = load i32, i32* %13, align 4
  %97 = trunc i64 %20 to i32
  %98 = call i32 @read(i32 %96, i8* %21, i32 %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %145

103:                                              ; preds = %95
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.seccomp_notif*, %struct.seccomp_notif** %5, align 8
  %106 = getelementptr inbounds %struct.seccomp_notif, %struct.seccomp_notif* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @SEEK_SET, align 4
  %112 = call i64 @lseek(i32 %104, i32 %110, i32 %111)
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %103
  %115 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %145

116:                                              ; preds = %103
  %117 = load i32, i32* %13, align 4
  %118 = trunc i64 %23 to i32
  %119 = call i32 @read(i32 %117, i8* %24, i32 %118)
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %145

124:                                              ; preds = %116
  %125 = call i32 @strncmp(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 5)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %144, label %127

127:                                              ; preds = %124
  %128 = call i32 @strncmp(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 5)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %144, label %130

130:                                              ; preds = %127
  %131 = load %struct.seccomp_notif*, %struct.seccomp_notif** %5, align 8
  %132 = getelementptr inbounds %struct.seccomp_notif, %struct.seccomp_notif* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 3
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @mount(i8* %21, i8* %24, i32* null, i32 %136, i32* null)
  %138 = icmp slt i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %130
  store i32 -1, i32* %12, align 4
  %140 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %145

141:                                              ; preds = %130
  %142 = load %struct.seccomp_notif_resp*, %struct.seccomp_notif_resp** %6, align 8
  %143 = getelementptr inbounds %struct.seccomp_notif_resp, %struct.seccomp_notif_resp* %142, i32 0, i32 0
  store i32 0, i32* %143, align 8
  br label %144

144:                                              ; preds = %141, %127, %124
  store i32 0, i32* %12, align 4
  br label %145

145:                                              ; preds = %144, %139, %122, %114, %101, %93, %79
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @close(i32 %146)
  %148 = load i32, i32* %12, align 4
  store i32 %148, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %149

149:                                              ; preds = %145, %70, %59, %42
  %150 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %150)
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i64 @ioctl(i32, i32, i32*) #2

declare dso_local i64 @lseek(i32, i32, i32) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

declare dso_local i64 @mount(i8*, i8*, i32*, i32, i32*) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
