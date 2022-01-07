; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_valid_get_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_valid_get_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsghdr = type { i64 }
%struct.neigh_table = type { i64 }
%struct.netlink_ext_ack = type { i32 }
%struct.ndmsg = type { i32, i32, i32, i64, i64, i64, i64 }
%struct.nlattr = type { i32 }

@NDA_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Invalid header for neighbor get request\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Invalid values in header for neighbor get request\00", align 1
@NTF_PROXY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Invalid flags in header for neighbor get request\00", align 1
@nda_policy = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"Unsupported family in header for neighbor get request\00", align 1
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"Invalid network address in neighbor get request\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Unsupported attribute in neighbor get request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlmsghdr*, %struct.neigh_table**, i8**, i32*, i32*, %struct.netlink_ext_ack*)* @neigh_valid_get_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neigh_valid_get_req(%struct.nlmsghdr* %0, %struct.neigh_table** %1, i8** %2, i32* %3, i32* %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nlmsghdr*, align 8
  %9 = alloca %struct.neigh_table**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.ndmsg*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %8, align 8
  store %struct.neigh_table** %1, %struct.neigh_table*** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %20 = load i32, i32* @NDA_MAX, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %14, align 8
  %24 = alloca %struct.nlattr*, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  %25 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %26 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @nlmsg_msg_size(i32 48)
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %6
  %31 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %32 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %155

35:                                               ; preds = %6
  %36 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %37 = call %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr* %36)
  store %struct.ndmsg* %37, %struct.ndmsg** %16, align 8
  %38 = load %struct.ndmsg*, %struct.ndmsg** %16, align 8
  %39 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %35
  %43 = load %struct.ndmsg*, %struct.ndmsg** %16, align 8
  %44 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %42
  %48 = load %struct.ndmsg*, %struct.ndmsg** %16, align 8
  %49 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load %struct.ndmsg*, %struct.ndmsg** %16, align 8
  %54 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52, %47, %42, %35
  %58 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %59 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %58, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %155

62:                                               ; preds = %52
  %63 = load %struct.ndmsg*, %struct.ndmsg** %16, align 8
  %64 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @NTF_PROXY, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %65, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %72 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %71, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %155

75:                                               ; preds = %62
  %76 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %77 = load i32, i32* @NDA_MAX, align 4
  %78 = load i32, i32* @nda_policy, align 4
  %79 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %80 = call i32 @nlmsg_parse_deprecated_strict(%struct.nlmsghdr* %76, i32 48, %struct.nlattr** %24, i32 %77, i32 %78, %struct.netlink_ext_ack* %79)
  store i32 %80, i32* %17, align 4
  %81 = load i32, i32* %17, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* %17, align 4
  store i32 %84, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %155

85:                                               ; preds = %75
  %86 = load %struct.ndmsg*, %struct.ndmsg** %16, align 8
  %87 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32*, i32** %12, align 8
  store i32 %88, i32* %89, align 4
  %90 = load %struct.ndmsg*, %struct.ndmsg** %16, align 8
  %91 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %11, align 8
  store i32 %92, i32* %93, align 4
  %94 = load %struct.ndmsg*, %struct.ndmsg** %16, align 8
  %95 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call %struct.neigh_table* @neigh_find_table(i32 %96)
  %98 = load %struct.neigh_table**, %struct.neigh_table*** %9, align 8
  store %struct.neigh_table* %97, %struct.neigh_table** %98, align 8
  %99 = load %struct.neigh_table**, %struct.neigh_table*** %9, align 8
  %100 = load %struct.neigh_table*, %struct.neigh_table** %99, align 8
  %101 = icmp eq %struct.neigh_table* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %85
  %103 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %104 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %103, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %105 = load i32, i32* @EAFNOSUPPORT, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %155

107:                                              ; preds = %85
  store i32 0, i32* %18, align 4
  br label %108

108:                                              ; preds = %151, %107
  %109 = load i32, i32* %18, align 4
  %110 = load i32, i32* @NDA_MAX, align 4
  %111 = icmp sle i32 %109, %110
  br i1 %111, label %112, label %154

112:                                              ; preds = %108
  %113 = load i32, i32* %18, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %114
  %116 = load %struct.nlattr*, %struct.nlattr** %115, align 8
  %117 = icmp ne %struct.nlattr* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %112
  br label %151

119:                                              ; preds = %112
  %120 = load i32, i32* %18, align 4
  switch i32 %120, label %145 [
    i32 128, label %121
  ]

121:                                              ; preds = %119
  %122 = load i32, i32* %18, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %123
  %125 = load %struct.nlattr*, %struct.nlattr** %124, align 8
  %126 = call i32 @nla_len(%struct.nlattr* %125)
  %127 = load %struct.neigh_table**, %struct.neigh_table*** %9, align 8
  %128 = load %struct.neigh_table*, %struct.neigh_table** %127, align 8
  %129 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = trunc i64 %130 to i32
  %132 = icmp ne i32 %126, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %121
  %134 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %135 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %134, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %155

138:                                              ; preds = %121
  %139 = load i32, i32* %18, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %140
  %142 = load %struct.nlattr*, %struct.nlattr** %141, align 8
  %143 = call i8* @nla_data(%struct.nlattr* %142)
  %144 = load i8**, i8*** %10, align 8
  store i8* %143, i8** %144, align 8
  br label %150

145:                                              ; preds = %119
  %146 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %147 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %146, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %155

150:                                              ; preds = %138
  br label %151

151:                                              ; preds = %150, %118
  %152 = load i32, i32* %18, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %18, align 4
  br label %108

154:                                              ; preds = %108
  store i32 0, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %155

155:                                              ; preds = %154, %145, %133, %102, %83, %70, %57, %30
  %156 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %156)
  %157 = load i32, i32* %7, align 4
  ret i32 %157
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @nlmsg_msg_size(i32) #2

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #2

declare dso_local %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr*) #2

declare dso_local i32 @nlmsg_parse_deprecated_strict(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #2

declare dso_local %struct.neigh_table* @neigh_find_table(i32) #2

declare dso_local i32 @nla_len(%struct.nlattr*) #2

declare dso_local i8* @nla_data(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
