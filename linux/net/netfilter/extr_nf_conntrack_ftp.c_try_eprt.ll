; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_ftp.c_try_eprt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_ftp.c_try_eprt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_man = type { i64, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.in6_addr = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"EPRT: too short\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"try_eprt: invalid delimiter.\0A\00", align 1
@PF_INET = common dso_local global i64 0, align 8
@PF_INET6 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"EPRT: invalid protocol number.\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"EPRT: Got %c%c%c\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"EPRT: Got IP address!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.nf_conntrack_man*, i8, i32*)* @try_eprt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_eprt(i8* %0, i64 %1, %struct.nf_conntrack_man* %2, i8 signext %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nf_conntrack_man*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32], align 16
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.nf_conntrack_man* %2, %struct.nf_conntrack_man** %9, align 8
  store i8 %3, i8* %10, align 1
  store i32* %4, i32** %11, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ule i64 %15, 3
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %144

19:                                               ; preds = %5
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* %12, align 1
  %23 = load i8, i8* %12, align 1
  %24 = call i64 @isdigit(i8 signext %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %19
  %27 = load i8, i8* %12, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp slt i32 %28, 33
  br i1 %29, label %42, label %30

30:                                               ; preds = %26
  %31 = load i8, i8* %12, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp sgt i32 %32, 126
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = load i8, i8* %12, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %34, %30, %26, %19
  %43 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %144

44:                                               ; preds = %34
  %45 = load %struct.nf_conntrack_man*, %struct.nf_conntrack_man** %9, align 8
  %46 = getelementptr inbounds %struct.nf_conntrack_man, %struct.nf_conntrack_man* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PF_INET, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 49
  br i1 %55, label %68, label %56

56:                                               ; preds = %50, %44
  %57 = load %struct.nf_conntrack_man*, %struct.nf_conntrack_man** %9, align 8
  %58 = getelementptr inbounds %struct.nf_conntrack_man, %struct.nf_conntrack_man* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PF_INET6, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 50
  br i1 %67, label %68, label %70

68:                                               ; preds = %62, %50
  %69 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %144

70:                                               ; preds = %62, %56
  %71 = load i8, i8* %12, align 1
  %72 = sext i8 %71 to i32
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = load i8, i8* %12, align 1
  %78 = sext i8 %77 to i32
  %79 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %72, i32 %76, i32 %78)
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 49
  br i1 %84, label %85, label %115

85:                                               ; preds = %70
  %86 = load i8*, i8** %7, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 3
  %88 = load i64, i64* %8, align 8
  %89 = sub i64 %88, 3
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %91 = load i8, i8* %12, align 1
  %92 = call i32 @try_number(i8* %87, i64 %89, i32* %90, i32 4, i8 signext 46, i8 signext %91)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %85
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %97 = load i32, i32* %96, align 16
  %98 = shl i32 %97, 24
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %100, 16
  %102 = or i32 %98, %101
  %103 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  %104 = load i32, i32* %103, align 8
  %105 = shl i32 %104, 8
  %106 = or i32 %102, %105
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %106, %108
  %110 = call i32 @htonl(i32 %109)
  %111 = load %struct.nf_conntrack_man*, %struct.nf_conntrack_man** %9, align 8
  %112 = getelementptr inbounds %struct.nf_conntrack_man, %struct.nf_conntrack_man* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 8
  br label %114

114:                                              ; preds = %95, %85
  br label %127

115:                                              ; preds = %70
  %116 = load i8*, i8** %7, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 3
  %118 = load i64, i64* %8, align 8
  %119 = sub i64 %118, 3
  %120 = load %struct.nf_conntrack_man*, %struct.nf_conntrack_man** %9, align 8
  %121 = getelementptr inbounds %struct.nf_conntrack_man, %struct.nf_conntrack_man* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = inttoptr i64 %123 to %struct.in6_addr*
  %125 = load i8, i8* %12, align 1
  %126 = call i32 @get_ipv6_addr(i8* %117, i64 %119, %struct.in6_addr* %124, i8 signext %125)
  store i32 %126, i32* %13, align 4
  br label %127

127:                                              ; preds = %115, %114
  %128 = load i32, i32* %13, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  store i32 0, i32* %6, align 4
  br label %144

131:                                              ; preds = %127
  %132 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %133 = load i8*, i8** %7, align 8
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 3, %134
  %136 = add nsw i32 %135, 1
  %137 = load i64, i64* %8, align 8
  %138 = load i8, i8* %12, align 1
  %139 = load %struct.nf_conntrack_man*, %struct.nf_conntrack_man** %9, align 8
  %140 = getelementptr inbounds %struct.nf_conntrack_man, %struct.nf_conntrack_man* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = call i32 @get_port(i8* %133, i32 %136, i64 %137, i8 signext %138, i32* %142)
  store i32 %143, i32* %6, align 4
  br label %144

144:                                              ; preds = %131, %130, %68, %42, %17
  %145 = load i32, i32* %6, align 4
  ret i32 %145
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @try_number(i8*, i64, i32*, i32, i8 signext, i8 signext) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @get_ipv6_addr(i8*, i64, %struct.in6_addr*, i8 signext) #1

declare dso_local i32 @get_port(i8*, i32, i64, i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
