; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_super.c___put_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_super.c___put_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@destroy_super_rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @__put_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__put_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %3 = load %struct.super_block*, %struct.super_block** %2, align 8
  %4 = getelementptr inbounds %struct.super_block, %struct.super_block* %3, i32 0, i32 7
  %5 = load i32, i32* %4, align 4
  %6 = add nsw i32 %5, -1
  store i32 %6, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %45, label %8

8:                                                ; preds = %1
  %9 = load %struct.super_block*, %struct.super_block** %2, align 8
  %10 = getelementptr inbounds %struct.super_block, %struct.super_block* %9, i32 0, i32 6
  %11 = call i32 @list_del_init(i32* %10)
  %12 = load %struct.super_block*, %struct.super_block** %2, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.super_block*, %struct.super_block** %2, align 8
  %18 = getelementptr inbounds %struct.super_block, %struct.super_block* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load %struct.super_block*, %struct.super_block** %2, align 8
  %23 = getelementptr inbounds %struct.super_block, %struct.super_block* %22, i32 0, i32 3
  %24 = call i32 @list_empty(i32* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = load %struct.super_block*, %struct.super_block** %2, align 8
  %30 = call i32 @security_sb_free(%struct.super_block* %29)
  %31 = load %struct.super_block*, %struct.super_block** %2, align 8
  %32 = call i32 @fscrypt_sb_free(%struct.super_block* %31)
  %33 = load %struct.super_block*, %struct.super_block** %2, align 8
  %34 = getelementptr inbounds %struct.super_block, %struct.super_block* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @put_user_ns(i32 %35)
  %37 = load %struct.super_block*, %struct.super_block** %2, align 8
  %38 = getelementptr inbounds %struct.super_block, %struct.super_block* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @kfree(i32 %39)
  %41 = load %struct.super_block*, %struct.super_block** %2, align 8
  %42 = getelementptr inbounds %struct.super_block, %struct.super_block* %41, i32 0, i32 0
  %43 = load i32, i32* @destroy_super_rcu, align 4
  %44 = call i32 @call_rcu(i32* %42, i32 %43)
  br label %45

45:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @security_sb_free(%struct.super_block*) #1

declare dso_local i32 @fscrypt_sb_free(%struct.super_block*) #1

declare dso_local i32 @put_user_ns(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
