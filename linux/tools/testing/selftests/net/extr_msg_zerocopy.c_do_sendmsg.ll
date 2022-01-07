; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_msg_zerocopy.c_do_sendmsg.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_msg_zerocopy.c_do_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32, i32, %struct.cmsghdr*, %struct.TYPE_2__* }
%struct.cmsghdr = type { i32 }
%struct.TYPE_2__ = type { i64 }

@do_sendmsg.cookie = internal global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_ZEROCOPY = common dso_local global i32 0, align 4
@PF_RDS = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"send\00", align 1
@cfg_verbose = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"send: ret=%u != %u\0A\00", align 1
@packets = common dso_local global i32 0, align 4
@bytes = common dso_local global i32 0, align 4
@expected_completions = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.msghdr*, i32, i32)* @do_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_sendmsg(i32 %0, %struct.msghdr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.msghdr* %1, %struct.msghdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = call i32 @CMSG_SPACE(i32 4)
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %14, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %15, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %40, %4
  %22 = load i32, i32* %12, align 4
  %23 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %24 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %29 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %27
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %12, align 4
  br label %21

43:                                               ; preds = %21
  %44 = load i32, i32* @MSG_DONTWAIT, align 4
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %43
  %48 = load i32, i32* @MSG_ZEROCOPY, align 4
  %49 = load i32, i32* %13, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @PF_RDS, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %47
  %55 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %56 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %55, i32 0, i32 2
  %57 = call i32 @memset(%struct.cmsghdr** %56, i32 0, i32 8)
  %58 = call i32 @CMSG_SPACE(i32 4)
  %59 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %60 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = bitcast i8* %20 to %struct.cmsghdr*
  %62 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %63 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %62, i32 0, i32 2
  store %struct.cmsghdr* %61, %struct.cmsghdr** %63, align 8
  %64 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %65 = load i32, i32* @do_sendmsg.cookie, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @do_sendmsg.cookie, align 4
  %67 = call i32 @add_zcopy_cookie(%struct.msghdr* %64, i32 %66)
  br label %68

68:                                               ; preds = %54, %47
  br label %69

69:                                               ; preds = %68, %43
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @sendmsg(i32 %70, %struct.msghdr* %71, i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load i64, i64* @errno, align 8
  %78 = load i64, i64* @EAGAIN, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %130

81:                                               ; preds = %76, %69
  %82 = load i32, i32* %10, align 4
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i64, i64* @errno, align 8
  %86 = call i32 @error(i32 1, i64 %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i64, i64* @cfg_verbose, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %87
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load i32, i32* @stderr, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @fprintf(i32 %95, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %94, %90, %87
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %99
  %103 = load i32, i32* @packets, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* @packets, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @bytes, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* @bytes, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %102
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32, i32* @expected_completions, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* @expected_completions, align 4
  br label %116

116:                                              ; preds = %113, %110, %102
  br label %117

117:                                              ; preds = %116, %99
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @PF_RDS, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %126 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %125, i32 0, i32 2
  store %struct.cmsghdr* null, %struct.cmsghdr** %126, align 8
  %127 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %128 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %127, i32 0, i32 1
  store i32 0, i32* %128, align 4
  br label %129

129:                                              ; preds = %124, %120, %117
  store i32 1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %130

130:                                              ; preds = %129, %80
  %131 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %131)
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @CMSG_SPACE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(%struct.cmsghdr**, i32, i32) #1

declare dso_local i32 @add_zcopy_cookie(%struct.msghdr*, i32) #1

declare dso_local i32 @sendmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @error(i32, i64, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
