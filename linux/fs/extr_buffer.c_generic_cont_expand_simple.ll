; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c_generic_cont_expand_simple.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c_generic_cont_expand_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@AOP_FLAG_CONT_EXPAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_cont_expand_simple(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load %struct.address_space*, %struct.address_space** %10, align 8
  store %struct.address_space* %11, %struct.address_space** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @inode_newsize_ok(%struct.inode* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %36

18:                                               ; preds = %2
  %19 = load %struct.address_space*, %struct.address_space** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @AOP_FLAG_CONT_EXPAND, align 4
  %22 = call i32 @pagecache_write_begin(i32* null, %struct.address_space* %19, i32 %20, i32 0, i32 %21, %struct.page** %6, i8** %7)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %36

26:                                               ; preds = %18
  %27 = load %struct.address_space*, %struct.address_space** %5, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.page*, %struct.page** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @pagecache_write_end(i32* null, %struct.address_space* %27, i32 %28, i32 0, i32 0, %struct.page* %29, i8* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp sgt i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  br label %36

36:                                               ; preds = %26, %25, %17
  %37 = load i32, i32* %8, align 4
  ret i32 %37
}

declare dso_local i32 @inode_newsize_ok(%struct.inode*, i32) #1

declare dso_local i32 @pagecache_write_begin(i32*, %struct.address_space*, i32, i32, i32, %struct.page**, i8**) #1

declare dso_local i32 @pagecache_write_end(i32*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
