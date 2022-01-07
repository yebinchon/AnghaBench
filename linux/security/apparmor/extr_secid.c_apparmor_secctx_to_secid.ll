; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_secid.c_apparmor_secctx_to_secid.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_secid.c_apparmor_secctx_to_secid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.aa_label = type { i32 }

@root_ns = common dso_local global %struct.TYPE_4__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apparmor_secctx_to_secid(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.aa_label*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @root_ns, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.aa_label* @aa_label_strn_parse(i32* %12, i8* %13, i32 %14, i32 %15, i32 0, i32 0)
  store %struct.aa_label* %16, %struct.aa_label** %8, align 8
  %17 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %18 = call i64 @IS_ERR(%struct.aa_label* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %22 = call i32 @PTR_ERR(%struct.aa_label* %21)
  store i32 %22, i32* %4, align 4
  br label %28

23:                                               ; preds = %3
  %24 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %25 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %23, %20
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local %struct.aa_label* @aa_label_strn_parse(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.aa_label*) #1

declare dso_local i32 @PTR_ERR(%struct.aa_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
