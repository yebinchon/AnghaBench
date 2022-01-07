; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_valid_fdb_dump_strict.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_valid_fdb_dump_strict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsghdr = type { i64 }
%struct.netlink_ext_ack = type { i32 }
%struct.ndmsg = type { i32, i64, i64, i64, i64, i64 }
%struct.nlattr = type { i32 }

@NDA_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Invalid header for fdb dump request\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Invalid values in header for fdb dump request\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Invalid IFINDEX attribute in fdb dump request\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Invalid MASTER attribute in fdb dump request\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Unsupported attribute in fdb dump request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlmsghdr*, i32*, i32*, %struct.netlink_ext_ack*)* @valid_fdb_dump_strict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_fdb_dump_strict(%struct.nlmsghdr* %0, i32* %1, i32* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ndmsg*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %16 = load i32, i32* @NDA_MAX, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca %struct.nlattr*, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %22 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @nlmsg_msg_size(i32 48)
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %4
  %27 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %28 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %136

31:                                               ; preds = %4
  %32 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %33 = call %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr* %32)
  store %struct.ndmsg* %33, %struct.ndmsg** %12, align 8
  %34 = load %struct.ndmsg*, %struct.ndmsg** %12, align 8
  %35 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %58, label %38

38:                                               ; preds = %31
  %39 = load %struct.ndmsg*, %struct.ndmsg** %12, align 8
  %40 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %38
  %44 = load %struct.ndmsg*, %struct.ndmsg** %12, align 8
  %45 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %43
  %49 = load %struct.ndmsg*, %struct.ndmsg** %12, align 8
  %50 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load %struct.ndmsg*, %struct.ndmsg** %12, align 8
  %55 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53, %48, %43, %38, %31
  %59 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %60 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %59, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %136

63:                                               ; preds = %53
  %64 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %65 = load i32, i32* @NDA_MAX, align 4
  %66 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %67 = call i32 @nlmsg_parse_deprecated_strict(%struct.nlmsghdr* %64, i32 48, %struct.nlattr** %20, i32 %65, i32* null, %struct.netlink_ext_ack* %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %136

72:                                               ; preds = %63
  %73 = load %struct.ndmsg*, %struct.ndmsg** %12, align 8
  %74 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32*, i32** %8, align 8
  store i32 %75, i32* %76, align 4
  store i32 0, i32* %14, align 4
  br label %77

77:                                               ; preds = %132, %72
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @NDA_MAX, align 4
  %80 = icmp sle i32 %78, %79
  br i1 %80, label %81, label %135

81:                                               ; preds = %77
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %83
  %85 = load %struct.nlattr*, %struct.nlattr** %84, align 8
  %86 = icmp ne %struct.nlattr* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %81
  br label %132

88:                                               ; preds = %81
  %89 = load i32, i32* %14, align 4
  switch i32 %89, label %126 [
    i32 129, label %90
    i32 128, label %108
  ]

90:                                               ; preds = %88
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %92
  %94 = load %struct.nlattr*, %struct.nlattr** %93, align 8
  %95 = call i32 @nla_len(%struct.nlattr* %94)
  %96 = sext i32 %95 to i64
  %97 = icmp ne i64 %96, 4
  br i1 %97, label %98, label %103

98:                                               ; preds = %90
  %99 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %100 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %99, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %136

103:                                              ; preds = %90
  %104 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 129
  %105 = load %struct.nlattr*, %struct.nlattr** %104, align 8
  %106 = call i32 @nla_get_u32(%struct.nlattr* %105)
  %107 = load i32*, i32** %8, align 8
  store i32 %106, i32* %107, align 4
  br label %131

108:                                              ; preds = %88
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %110
  %112 = load %struct.nlattr*, %struct.nlattr** %111, align 8
  %113 = call i32 @nla_len(%struct.nlattr* %112)
  %114 = sext i32 %113 to i64
  %115 = icmp ne i64 %114, 4
  br i1 %115, label %116, label %121

116:                                              ; preds = %108
  %117 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %118 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %117, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %136

121:                                              ; preds = %108
  %122 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 128
  %123 = load %struct.nlattr*, %struct.nlattr** %122, align 16
  %124 = call i32 @nla_get_u32(%struct.nlattr* %123)
  %125 = load i32*, i32** %7, align 8
  store i32 %124, i32* %125, align 4
  br label %131

126:                                              ; preds = %88
  %127 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %128 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %127, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %136

131:                                              ; preds = %121, %103
  br label %132

132:                                              ; preds = %131, %87
  %133 = load i32, i32* %14, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %14, align 4
  br label %77

135:                                              ; preds = %77
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %136

136:                                              ; preds = %135, %126, %116, %98, %70, %58, %26
  %137 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %137)
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @nlmsg_msg_size(i32) #2

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #2

declare dso_local %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr*) #2

declare dso_local i32 @nlmsg_parse_deprecated_strict(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32*, %struct.netlink_ext_ack*) #2

declare dso_local i32 @nla_len(%struct.nlattr*) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
