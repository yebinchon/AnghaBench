; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c___rpc_lookup_create_exclusive.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c___rpc_lookup_create_exclusive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.qstr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*, i8*)* @__rpc_lookup_create_exclusive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @__rpc_lookup_create_exclusive(%struct.dentry* %0, i8* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.qstr, align 4
  %7 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @strlen(i8* %9)
  %11 = call i32 @QSTR_INIT(i8* %8, i32 %10)
  %12 = getelementptr inbounds %struct.qstr, %struct.qstr* %6, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load %struct.dentry*, %struct.dentry** %4, align 8
  %14 = call %struct.dentry* @d_hash_and_lookup(%struct.dentry* %13, %struct.qstr* %6)
  store %struct.dentry* %14, %struct.dentry** %7, align 8
  %15 = load %struct.dentry*, %struct.dentry** %7, align 8
  %16 = icmp ne %struct.dentry* %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %2
  %18 = load %struct.dentry*, %struct.dentry** %4, align 8
  %19 = call %struct.dentry* @d_alloc(%struct.dentry* %18, %struct.qstr* %6)
  store %struct.dentry* %19, %struct.dentry** %7, align 8
  %20 = load %struct.dentry*, %struct.dentry** %7, align 8
  %21 = icmp ne %struct.dentry* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.dentry* @ERR_PTR(i32 %24)
  store %struct.dentry* %25, %struct.dentry** %3, align 8
  br label %39

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.dentry*, %struct.dentry** %7, align 8
  %29 = call i64 @d_really_is_negative(%struct.dentry* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %32, %struct.dentry** %3, align 8
  br label %39

33:                                               ; preds = %27
  %34 = load %struct.dentry*, %struct.dentry** %7, align 8
  %35 = call i32 @dput(%struct.dentry* %34)
  %36 = load i32, i32* @EEXIST, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.dentry* @ERR_PTR(i32 %37)
  store %struct.dentry* %38, %struct.dentry** %3, align 8
  br label %39

39:                                               ; preds = %33, %31, %22
  %40 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %40
}

declare dso_local i32 @QSTR_INIT(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.dentry* @d_hash_and_lookup(%struct.dentry*, %struct.qstr*) #1

declare dso_local %struct.dentry* @d_alloc(%struct.dentry*, %struct.qstr*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i64 @d_really_is_negative(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
