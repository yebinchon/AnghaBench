; ModuleID = '/home/carl/AnghaBench/linux/net/psample/extr_psample.c_psample_group_nl_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/psample/extr_psample.c_psample_group_nl_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.psample_group = type { i32, i32, i32 }

@psample_nl_family = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@PSAMPLE_ATTR_SAMPLE_GROUP = common dso_local global i32 0, align 4
@PSAMPLE_ATTR_GROUP_REFCOUNT = common dso_local global i32 0, align 4
@PSAMPLE_ATTR_GROUP_SEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.psample_group*, i32, i32, i32, i32)* @psample_group_nl_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psample_group_nl_fill(%struct.sk_buff* %0, %struct.psample_group* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.psample_group*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.psample_group* %1, %struct.psample_group** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i8* @genlmsg_put(%struct.sk_buff* %16, i32 %17, i32 %18, i32* @psample_nl_family, i32 %19, i32 %20)
  store i8* %21, i8** %14, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @EMSGSIZE, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %67

27:                                               ; preds = %6
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = load i32, i32* @PSAMPLE_ATTR_SAMPLE_GROUP, align 4
  %30 = load %struct.psample_group*, %struct.psample_group** %9, align 8
  %31 = getelementptr inbounds %struct.psample_group, %struct.psample_group* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @nla_put_u32(%struct.sk_buff* %28, i32 %29, i32 %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %61

37:                                               ; preds = %27
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = load i32, i32* @PSAMPLE_ATTR_GROUP_REFCOUNT, align 4
  %40 = load %struct.psample_group*, %struct.psample_group** %9, align 8
  %41 = getelementptr inbounds %struct.psample_group, %struct.psample_group* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @nla_put_u32(%struct.sk_buff* %38, i32 %39, i32 %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %61

47:                                               ; preds = %37
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = load i32, i32* @PSAMPLE_ATTR_GROUP_SEQ, align 4
  %50 = load %struct.psample_group*, %struct.psample_group** %9, align 8
  %51 = getelementptr inbounds %struct.psample_group, %struct.psample_group* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @nla_put_u32(%struct.sk_buff* %48, i32 %49, i32 %52)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %61

57:                                               ; preds = %47
  %58 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = call i32 @genlmsg_end(%struct.sk_buff* %58, i8* %59)
  store i32 0, i32* %7, align 4
  br label %67

61:                                               ; preds = %56, %46, %36
  %62 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %63 = load i8*, i8** %14, align 8
  %64 = call i32 @genlmsg_cancel(%struct.sk_buff* %62, i8* %63)
  %65 = load i32, i32* @EMSGSIZE, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %61, %57, %24
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
