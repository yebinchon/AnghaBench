; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_nlattr.c_nla_validate_int_range.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_nlattr.c_nla_validate_int_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nla_policy = type { i64, i32, i64, i64 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@NLA_VALIDATE_RANGE = common dso_local global i64 0, align 8
@NLA_VALIDATE_MIN = common dso_local global i64 0, align 8
@NLA_VALIDATE_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"integer out of range\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nla_policy*, %struct.nlattr*, %struct.netlink_ext_ack*)* @nla_validate_int_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nla_validate_int_range(%struct.nla_policy* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nla_policy*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.nla_policy* %0, %struct.nla_policy** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %11 = load %struct.nla_policy*, %struct.nla_policy** %5, align 8
  %12 = getelementptr inbounds %struct.nla_policy, %struct.nla_policy* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NLA_VALIDATE_RANGE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load %struct.nla_policy*, %struct.nla_policy** %5, align 8
  %18 = getelementptr inbounds %struct.nla_policy, %struct.nla_policy* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NLA_VALIDATE_MIN, align 8
  %21 = icmp eq i64 %19, %20
  br label %22

22:                                               ; preds = %16, %3
  %23 = phi i1 [ true, %3 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %8, align 4
  %25 = load %struct.nla_policy*, %struct.nla_policy** %5, align 8
  %26 = getelementptr inbounds %struct.nla_policy, %struct.nla_policy* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NLA_VALIDATE_RANGE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %22
  %31 = load %struct.nla_policy*, %struct.nla_policy** %5, align 8
  %32 = getelementptr inbounds %struct.nla_policy, %struct.nla_policy* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NLA_VALIDATE_MAX, align 8
  %35 = icmp eq i64 %33, %34
  br label %36

36:                                               ; preds = %30, %22
  %37 = phi i1 [ true, %22 ], [ %35, %30 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %9, align 4
  %39 = load %struct.nla_policy*, %struct.nla_policy** %5, align 8
  %40 = getelementptr inbounds %struct.nla_policy, %struct.nla_policy* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %90 [
    i32 128, label %42
    i32 131, label %45
    i32 130, label %48
    i32 132, label %51
    i32 135, label %54
    i32 134, label %57
    i32 133, label %60
    i32 129, label %63
  ]

42:                                               ; preds = %36
  %43 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %44 = call i64 @nla_get_u8(%struct.nlattr* %43)
  store i64 %44, i64* %10, align 8
  br label %94

45:                                               ; preds = %36
  %46 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %47 = call i64 @nla_get_u16(%struct.nlattr* %46)
  store i64 %47, i64* %10, align 8
  br label %94

48:                                               ; preds = %36
  %49 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %50 = call i64 @nla_get_u32(%struct.nlattr* %49)
  store i64 %50, i64* %10, align 8
  br label %94

51:                                               ; preds = %36
  %52 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %53 = call i64 @nla_get_s8(%struct.nlattr* %52)
  store i64 %53, i64* %10, align 8
  br label %94

54:                                               ; preds = %36
  %55 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %56 = call i64 @nla_get_s16(%struct.nlattr* %55)
  store i64 %56, i64* %10, align 8
  br label %94

57:                                               ; preds = %36
  %58 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %59 = call i64 @nla_get_s32(%struct.nlattr* %58)
  store i64 %59, i64* %10, align 8
  br label %94

60:                                               ; preds = %36
  %61 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %62 = call i64 @nla_get_s64(%struct.nlattr* %61)
  store i64 %62, i64* %10, align 8
  br label %94

63:                                               ; preds = %36
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %68 = call i64 @nla_get_u64(%struct.nlattr* %67)
  %69 = load %struct.nla_policy*, %struct.nla_policy** %5, align 8
  %70 = getelementptr inbounds %struct.nla_policy, %struct.nla_policy* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %68, %71
  br i1 %72, label %83, label %73

73:                                               ; preds = %66, %63
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %73
  %77 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %78 = call i64 @nla_get_u64(%struct.nlattr* %77)
  %79 = load %struct.nla_policy*, %struct.nla_policy** %5, align 8
  %80 = getelementptr inbounds %struct.nla_policy, %struct.nla_policy* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %78, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %76, %66
  %84 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %85 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %86 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %84, %struct.nlattr* %85, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %87 = load i32, i32* @ERANGE, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %119

89:                                               ; preds = %76, %73
  store i32 0, i32* %4, align 4
  br label %119

90:                                               ; preds = %36
  %91 = call i32 @WARN_ON(i32 1)
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %119

94:                                               ; preds = %60, %57, %54, %51, %48, %45, %42
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i64, i64* %10, align 8
  %99 = load %struct.nla_policy*, %struct.nla_policy** %5, align 8
  %100 = getelementptr inbounds %struct.nla_policy, %struct.nla_policy* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp slt i64 %98, %101
  br i1 %102, label %112, label %103

103:                                              ; preds = %97, %94
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %103
  %107 = load i64, i64* %10, align 8
  %108 = load %struct.nla_policy*, %struct.nla_policy** %5, align 8
  %109 = getelementptr inbounds %struct.nla_policy, %struct.nla_policy* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = icmp sgt i64 %107, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %106, %97
  %113 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %114 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %115 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %113, %struct.nlattr* %114, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %116 = load i32, i32* @ERANGE, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %4, align 4
  br label %119

118:                                              ; preds = %106, %103
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %118, %112, %90, %89, %83
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i64 @nla_get_u8(%struct.nlattr*) #1

declare dso_local i64 @nla_get_u16(%struct.nlattr*) #1

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i64 @nla_get_s8(%struct.nlattr*) #1

declare dso_local i64 @nla_get_s16(%struct.nlattr*) #1

declare dso_local i64 @nla_get_s32(%struct.nlattr*) #1

declare dso_local i64 @nla_get_s64(%struct.nlattr*) #1

declare dso_local i64 @nla_get_u64(%struct.nlattr*) #1

declare dso_local i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack*, %struct.nlattr*, i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
