; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_preprocess.c_env_add.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_preprocess.c_env_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env = type { i32, i8*, i8* }

@env_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @env_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @env_add(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.env*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call %struct.env* @xmalloc(i32 24)
  store %struct.env* %6, %struct.env** %5, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i8* @xstrdup(i8* %7)
  %9 = load %struct.env*, %struct.env** %5, align 8
  %10 = getelementptr inbounds %struct.env, %struct.env* %9, i32 0, i32 2
  store i8* %8, i8** %10, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @xstrdup(i8* %11)
  %13 = load %struct.env*, %struct.env** %5, align 8
  %14 = getelementptr inbounds %struct.env, %struct.env* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load %struct.env*, %struct.env** %5, align 8
  %16 = getelementptr inbounds %struct.env, %struct.env* %15, i32 0, i32 0
  %17 = call i32 @list_add_tail(i32* %16, i32* @env_list)
  ret void
}

declare dso_local %struct.env* @xmalloc(i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
