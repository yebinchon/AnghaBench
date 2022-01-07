; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_fib_table_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_fib_table_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_table = type { i64 }
%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32* }
%struct.fib_dump_filter = type { i32 }
%struct.trie = type { %struct.key_vector* }
%struct.key_vector = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fib_table_dump(%struct.fib_table* %0, %struct.sk_buff* %1, %struct.netlink_callback* %2, %struct.fib_dump_filter* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fib_table*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.netlink_callback*, align 8
  %9 = alloca %struct.fib_dump_filter*, align 8
  %10 = alloca %struct.trie*, align 8
  %11 = alloca %struct.key_vector*, align 8
  %12 = alloca %struct.key_vector*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.fib_table* %0, %struct.fib_table** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.netlink_callback* %2, %struct.netlink_callback** %8, align 8
  store %struct.fib_dump_filter* %3, %struct.fib_dump_filter** %9, align 8
  %16 = load %struct.fib_table*, %struct.fib_table** %6, align 8
  %17 = getelementptr inbounds %struct.fib_table, %struct.fib_table* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.trie*
  store %struct.trie* %19, %struct.trie** %10, align 8
  %20 = load %struct.trie*, %struct.trie** %10, align 8
  %21 = getelementptr inbounds %struct.trie, %struct.trie* %20, i32 0, i32 0
  %22 = load %struct.key_vector*, %struct.key_vector** %21, align 8
  store %struct.key_vector* %22, %struct.key_vector** %12, align 8
  %23 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %24 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  %28 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %29 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %14, align 8
  br label %35

35:                                               ; preds = %79, %4
  %36 = load i8*, i8** %14, align 8
  %37 = call %struct.key_vector* @leaf_walk_rcu(%struct.key_vector** %12, i8* %36)
  store %struct.key_vector* %37, %struct.key_vector** %11, align 8
  %38 = icmp ne %struct.key_vector* %37, null
  br i1 %38, label %39, label %80

39:                                               ; preds = %35
  %40 = load %struct.key_vector*, %struct.key_vector** %11, align 8
  %41 = load %struct.fib_table*, %struct.fib_table** %6, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %44 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %9, align 8
  %45 = call i32 @fn_trie_dump_leaf(%struct.key_vector* %40, %struct.fib_table* %41, %struct.sk_buff* %42, %struct.netlink_callback* %43, %struct.fib_dump_filter* %44)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %39
  %49 = load i8*, i8** %14, align 8
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %52 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %57 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* %15, align 4
  store i32 %60, i32* %5, align 4
  br label %95

61:                                               ; preds = %39
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %13, align 4
  %64 = load %struct.key_vector*, %struct.key_vector** %11, align 8
  %65 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr i8, i8* %66, i64 1
  store i8* %67, i8** %14, align 8
  %68 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %69 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 4
  %72 = call i32 @memset(i32* %71, i32 0, i32 -8)
  %73 = load i8*, i8** %14, align 8
  %74 = load %struct.key_vector*, %struct.key_vector** %11, align 8
  %75 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ult i8* %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %61
  br label %80

79:                                               ; preds = %61
  br label %35

80:                                               ; preds = %78, %35
  %81 = load i8*, i8** %14, align 8
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %84 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  store i32 %82, i32* %86, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %89 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  store i32 %87, i32* %91, align 4
  %92 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %80, %48
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local %struct.key_vector* @leaf_walk_rcu(%struct.key_vector**, i8*) #1

declare dso_local i32 @fn_trie_dump_leaf(%struct.key_vector*, %struct.fib_table*, %struct.sk_buff*, %struct.netlink_callback*, %struct.fib_dump_filter*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
