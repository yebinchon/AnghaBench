; ModuleID = '/home/carl/AnghaBench/linux/net/wimax/extr_op-msg.c_wimax_gnl_doit_msg_from_user.c'
source_filename = "/home/carl/AnghaBench/linux/net/wimax/extr_op-msg.c_wimax_gnl_doit_msg_from_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.nlattr**, %struct.nlmsghdr* }
%struct.nlattr = type { i32 }
%struct.nlmsghdr = type { i32, i32, i32, i32, i32 }
%struct.wimax_dev = type { i32 (%struct.wimax_dev*, i8*, i8*, i64, %struct.genl_info.0*)*, i32, i32 }
%struct.genl_info.0 = type opaque
%struct.device = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"(skb %p info %p)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@WIMAX_GNL_MSG_IFIDX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"WIMAX_GNL_MSG_FROM_USER: can't find IFIDX attribute\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WIMAX_GNL_MSG_DATA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"WIMAX_GNL_MSG_FROM_USER: can't find MSG_DATA attribute\0A\00", align 1
@WIMAX_GNL_MSG_PIPE_NAME = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEDIUM = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"CRX: nlmsghdr len %u type %u flags 0x%04x seq 0x%x pid %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"CRX: wimax message %zu bytes\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"(skb %p info %p) = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wimax_gnl_doit_msg_from_user(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wimax_dev*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.nlmsghdr*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.nlattr*, align 8
  %14 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.genl_info* %1, %struct.genl_info** %4, align 8
  %15 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 1
  %17 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  store %struct.nlmsghdr* %17, %struct.nlmsghdr** %9, align 8
  %18 = call i32 (...) @might_sleep()
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %21 = call i32 @d_fnstart(i32 3, i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %19, %struct.genl_info* %20)
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  %24 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %25 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %24, i32 0, i32 0
  %26 = load %struct.nlattr**, %struct.nlattr*** %25, align 8
  %27 = load i64, i64* @WIMAX_GNL_MSG_IFIDX, align 8
  %28 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %27
  %29 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %30 = icmp eq %struct.nlattr* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %181

33:                                               ; preds = %2
  %34 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %35 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %34, i32 0, i32 0
  %36 = load %struct.nlattr**, %struct.nlattr*** %35, align 8
  %37 = load i64, i64* @WIMAX_GNL_MSG_IFIDX, align 8
  %38 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %36, i64 %37
  %39 = load %struct.nlattr*, %struct.nlattr** %38, align 8
  %40 = call i32 @nla_get_u32(%struct.nlattr* %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call %struct.wimax_dev* @wimax_dev_get_by_genl_info(%struct.genl_info* %41, i32 %42)
  store %struct.wimax_dev* %43, %struct.wimax_dev** %7, align 8
  %44 = load %struct.wimax_dev*, %struct.wimax_dev** %7, align 8
  %45 = icmp eq %struct.wimax_dev* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %181

47:                                               ; preds = %33
  %48 = load %struct.wimax_dev*, %struct.wimax_dev** %7, align 8
  %49 = call %struct.device* @wimax_dev_to_dev(%struct.wimax_dev* %48)
  store %struct.device* %49, %struct.device** %8, align 8
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  %52 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %53 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %52, i32 0, i32 0
  %54 = load %struct.nlattr**, %struct.nlattr*** %53, align 8
  %55 = load i64, i64* @WIMAX_GNL_MSG_DATA, align 8
  %56 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %54, i64 %55
  %57 = load %struct.nlattr*, %struct.nlattr** %56, align 8
  %58 = icmp eq %struct.nlattr* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = load %struct.device*, %struct.device** %8, align 8
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  br label %176

62:                                               ; preds = %47
  %63 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %64 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %63, i32 0, i32 0
  %65 = load %struct.nlattr**, %struct.nlattr*** %64, align 8
  %66 = load i64, i64* @WIMAX_GNL_MSG_DATA, align 8
  %67 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %65, i64 %66
  %68 = load %struct.nlattr*, %struct.nlattr** %67, align 8
  %69 = call i8* @nla_data(%struct.nlattr* %68)
  store i8* %69, i8** %11, align 8
  %70 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %71 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %70, i32 0, i32 0
  %72 = load %struct.nlattr**, %struct.nlattr*** %71, align 8
  %73 = load i64, i64* @WIMAX_GNL_MSG_DATA, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %72, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = call i64 @nla_len(%struct.nlattr* %75)
  store i64 %76, i64* %12, align 8
  %77 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %78 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %77, i32 0, i32 0
  %79 = load %struct.nlattr**, %struct.nlattr*** %78, align 8
  %80 = load i64, i64* @WIMAX_GNL_MSG_PIPE_NAME, align 8
  %81 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %79, i64 %80
  %82 = load %struct.nlattr*, %struct.nlattr** %81, align 8
  %83 = icmp eq %struct.nlattr* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %62
  store i8* null, i8** %10, align 8
  br label %109

85:                                               ; preds = %62
  %86 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %87 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %86, i32 0, i32 0
  %88 = load %struct.nlattr**, %struct.nlattr*** %87, align 8
  %89 = load i64, i64* @WIMAX_GNL_MSG_PIPE_NAME, align 8
  %90 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %88, i64 %89
  %91 = load %struct.nlattr*, %struct.nlattr** %90, align 8
  store %struct.nlattr* %91, %struct.nlattr** %13, align 8
  %92 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %93 = call i64 @nla_len(%struct.nlattr* %92)
  store i64 %93, i64* %14, align 8
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  %96 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %97 = call i8* @nla_data(%struct.nlattr* %96)
  %98 = load i64, i64* %14, align 8
  %99 = add i64 %98, 1
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = call i8* @kstrndup(i8* %97, i64 %99, i32 %100)
  store i8* %101, i8** %10, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %85
  br label %173

105:                                              ; preds = %85
  %106 = load i8*, i8** %10, align 8
  %107 = load i64, i64* %14, align 8
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8 0, i8* %108, align 1
  br label %109

109:                                              ; preds = %105, %84
  %110 = load %struct.wimax_dev*, %struct.wimax_dev** %7, align 8
  %111 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %110, i32 0, i32 2
  %112 = call i32 @mutex_lock(i32* %111)
  %113 = load %struct.wimax_dev*, %struct.wimax_dev** %7, align 8
  %114 = call i32 @wimax_dev_is_ready(%struct.wimax_dev* %113)
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @ENOMEDIUM, align 4
  %117 = sub nsw i32 0, %116
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %109
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %119, %109
  %121 = load i32, i32* %5, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %169

124:                                              ; preds = %120
  %125 = load i32, i32* @ENOSYS, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %5, align 4
  %127 = load %struct.wimax_dev*, %struct.wimax_dev** %7, align 8
  %128 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %127, i32 0, i32 0
  %129 = load i32 (%struct.wimax_dev*, i8*, i8*, i64, %struct.genl_info.0*)*, i32 (%struct.wimax_dev*, i8*, i8*, i64, %struct.genl_info.0*)** %128, align 8
  %130 = icmp eq i32 (%struct.wimax_dev*, i8*, i8*, i64, %struct.genl_info.0*)* %129, null
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  br label %168

132:                                              ; preds = %124
  %133 = load %struct.device*, %struct.device** %8, align 8
  %134 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %135 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %139 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %142 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %145 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %148 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (i32, %struct.device*, i8*, i64, ...) @d_printf(i32 1, %struct.device* %133, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i64 %137, i32 %140, i32 %143, i32 %146, i32 %149)
  %151 = load %struct.device*, %struct.device** %8, align 8
  %152 = load i64, i64* %12, align 8
  %153 = call i32 (i32, %struct.device*, i8*, i64, ...) @d_printf(i32 1, %struct.device* %151, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %152)
  %154 = load %struct.device*, %struct.device** %8, align 8
  %155 = load i8*, i8** %11, align 8
  %156 = load i64, i64* %12, align 8
  %157 = call i32 @d_dump(i32 2, %struct.device* %154, i8* %155, i64 %156)
  %158 = load %struct.wimax_dev*, %struct.wimax_dev** %7, align 8
  %159 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %158, i32 0, i32 0
  %160 = load i32 (%struct.wimax_dev*, i8*, i8*, i64, %struct.genl_info.0*)*, i32 (%struct.wimax_dev*, i8*, i8*, i64, %struct.genl_info.0*)** %159, align 8
  %161 = load %struct.wimax_dev*, %struct.wimax_dev** %7, align 8
  %162 = load i8*, i8** %10, align 8
  %163 = load i8*, i8** %11, align 8
  %164 = load i64, i64* %12, align 8
  %165 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %166 = bitcast %struct.genl_info* %165 to %struct.genl_info.0*
  %167 = call i32 %160(%struct.wimax_dev* %161, i8* %162, i8* %163, i64 %164, %struct.genl_info.0* %166)
  store i32 %167, i32* %5, align 4
  br label %168

168:                                              ; preds = %132, %131
  br label %169

169:                                              ; preds = %168, %123
  %170 = load %struct.wimax_dev*, %struct.wimax_dev** %7, align 8
  %171 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %170, i32 0, i32 2
  %172 = call i32 @mutex_unlock(i32* %171)
  br label %173

173:                                              ; preds = %169, %104
  %174 = load i8*, i8** %10, align 8
  %175 = call i32 @kfree(i8* %174)
  br label %176

176:                                              ; preds = %173, %59
  %177 = load %struct.wimax_dev*, %struct.wimax_dev** %7, align 8
  %178 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @dev_put(i32 %179)
  br label %181

181:                                              ; preds = %176, %46, %31
  %182 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %183 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %184 = load i32, i32* %5, align 4
  %185 = call i32 @d_fnend(i32 3, i32* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), %struct.sk_buff* %182, %struct.genl_info* %183, i32 %184)
  %186 = load i32, i32* %5, align 4
  ret i32 %186
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @d_fnstart(i32, i32*, i8*, %struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.wimax_dev* @wimax_dev_get_by_genl_info(%struct.genl_info*, i32) #1

declare dso_local %struct.device* @wimax_dev_to_dev(%struct.wimax_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i64 @nla_len(%struct.nlattr*) #1

declare dso_local i8* @kstrndup(i8*, i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wimax_dev_is_ready(%struct.wimax_dev*) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, i64, ...) #1

declare dso_local i32 @d_dump(i32, %struct.device*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @dev_put(i32) #1

declare dso_local i32 @d_fnend(i32, i32*, i8*, %struct.sk_buff*, %struct.genl_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
