; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_msg_zerocopy.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_msg_zerocopy.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"packet\00", align 1
@PF_PACKET = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"packet_dgram\00", align 1
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@cfg_family = common dso_local global i32 0, align 4
@IPPROTO_EGP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"raw_hdrincl\00", align 1
@IPPROTO_RAW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"rds\00", align 1
@PF_RDS = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"unknown cfg_test %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i8**, i8*** %5, align 8
  %9 = call i32 @parse_opts(i32 %7, i8** %8)
  %10 = load i8**, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sub nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8*, i8** %10, i64 %13
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @PF_PACKET, align 4
  %21 = load i32, i32* @SOCK_RAW, align 4
  %22 = call i32 @do_test(i32 %20, i32 %21, i32 0)
  br label %82

23:                                               ; preds = %2
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @PF_PACKET, align 4
  %29 = load i32, i32* @SOCK_DGRAM, align 4
  %30 = call i32 @do_test(i32 %28, i32 %29, i32 0)
  br label %81

31:                                               ; preds = %23
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @cfg_family, align 4
  %37 = load i32, i32* @SOCK_RAW, align 4
  %38 = load i32, i32* @IPPROTO_EGP, align 4
  %39 = call i32 @do_test(i32 %36, i32 %37, i32 %38)
  br label %80

40:                                               ; preds = %31
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @cfg_family, align 4
  %46 = load i32, i32* @SOCK_RAW, align 4
  %47 = load i32, i32* @IPPROTO_RAW, align 4
  %48 = call i32 @do_test(i32 %45, i32 %46, i32 %47)
  br label %79

49:                                               ; preds = %40
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @cfg_family, align 4
  %55 = load i32, i32* @SOCK_STREAM, align 4
  %56 = call i32 @do_test(i32 %54, i32 %55, i32 0)
  br label %78

57:                                               ; preds = %49
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @cfg_family, align 4
  %63 = load i32, i32* @SOCK_DGRAM, align 4
  %64 = call i32 @do_test(i32 %62, i32 %63, i32 0)
  br label %77

65:                                               ; preds = %57
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @PF_RDS, align 4
  %71 = load i32, i32* @SOCK_SEQPACKET, align 4
  %72 = call i32 @do_test(i32 %70, i32 %71, i32 0)
  br label %76

73:                                               ; preds = %65
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %73, %69
  br label %77

77:                                               ; preds = %76, %61
  br label %78

78:                                               ; preds = %77, %53
  br label %79

79:                                               ; preds = %78, %44
  br label %80

80:                                               ; preds = %79, %35
  br label %81

81:                                               ; preds = %80, %27
  br label %82

82:                                               ; preds = %81, %19
  ret i32 0
}

declare dso_local i32 @parse_opts(i32, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @do_test(i32, i32, i32) #1

declare dso_local i32 @error(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
