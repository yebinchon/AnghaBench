; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-cache.c_get_opname_string.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-cache.c_get_opname_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orangefs_kernel_op_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ORANGEFS_VFS_OP_FILE_IO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"OP_FILE_IO\00", align 1
@ORANGEFS_VFS_OP_LOOKUP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"OP_LOOKUP\00", align 1
@ORANGEFS_VFS_OP_CREATE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"OP_CREATE\00", align 1
@ORANGEFS_VFS_OP_GETATTR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"OP_GETATTR\00", align 1
@ORANGEFS_VFS_OP_REMOVE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"OP_REMOVE\00", align 1
@ORANGEFS_VFS_OP_MKDIR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"OP_MKDIR\00", align 1
@ORANGEFS_VFS_OP_READDIR = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"OP_READDIR\00", align 1
@ORANGEFS_VFS_OP_READDIRPLUS = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"OP_READDIRPLUS\00", align 1
@ORANGEFS_VFS_OP_SETATTR = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"OP_SETATTR\00", align 1
@ORANGEFS_VFS_OP_SYMLINK = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"OP_SYMLINK\00", align 1
@ORANGEFS_VFS_OP_RENAME = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [10 x i8] c"OP_RENAME\00", align 1
@ORANGEFS_VFS_OP_STATFS = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [10 x i8] c"OP_STATFS\00", align 1
@ORANGEFS_VFS_OP_TRUNCATE = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [12 x i8] c"OP_TRUNCATE\00", align 1
@ORANGEFS_VFS_OP_RA_FLUSH = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [12 x i8] c"OP_RA_FLUSH\00", align 1
@ORANGEFS_VFS_OP_FS_MOUNT = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [12 x i8] c"OP_FS_MOUNT\00", align 1
@ORANGEFS_VFS_OP_FS_UMOUNT = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [13 x i8] c"OP_FS_UMOUNT\00", align 1
@ORANGEFS_VFS_OP_GETXATTR = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [12 x i8] c"OP_GETXATTR\00", align 1
@ORANGEFS_VFS_OP_SETXATTR = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [12 x i8] c"OP_SETXATTR\00", align 1
@ORANGEFS_VFS_OP_LISTXATTR = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [13 x i8] c"OP_LISTXATTR\00", align 1
@ORANGEFS_VFS_OP_REMOVEXATTR = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [15 x i8] c"OP_REMOVEXATTR\00", align 1
@ORANGEFS_VFS_OP_PARAM = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [9 x i8] c"OP_PARAM\00", align 1
@ORANGEFS_VFS_OP_PERF_COUNT = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [14 x i8] c"OP_PERF_COUNT\00", align 1
@ORANGEFS_VFS_OP_CANCEL = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [10 x i8] c"OP_CANCEL\00", align 1
@ORANGEFS_VFS_OP_FSYNC = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [9 x i8] c"OP_FSYNC\00", align 1
@ORANGEFS_VFS_OP_FSKEY = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [9 x i8] c"OP_FSKEY\00", align 1
@ORANGEFS_VFS_OP_FEATURES = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [12 x i8] c"OP_FEATURES\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"OP_UNKNOWN?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_opname_string(%struct.orangefs_kernel_op_s* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.orangefs_kernel_op_s*, align 8
  %4 = alloca i64, align 8
  store %struct.orangefs_kernel_op_s* %0, %struct.orangefs_kernel_op_s** %3, align 8
  %5 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %3, align 8
  %6 = icmp ne %struct.orangefs_kernel_op_s* %5, null
  br i1 %6, label %7, label %167

7:                                                ; preds = %1
  %8 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %3, align 8
  %9 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @ORANGEFS_VFS_OP_FILE_IO, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %7
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %168

16:                                               ; preds = %7
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @ORANGEFS_VFS_OP_LOOKUP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %168

21:                                               ; preds = %16
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @ORANGEFS_VFS_OP_CREATE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %168

26:                                               ; preds = %21
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @ORANGEFS_VFS_OP_GETATTR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %168

31:                                               ; preds = %26
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @ORANGEFS_VFS_OP_REMOVE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %168

36:                                               ; preds = %31
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @ORANGEFS_VFS_OP_MKDIR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %168

41:                                               ; preds = %36
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @ORANGEFS_VFS_OP_READDIR, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %168

46:                                               ; preds = %41
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @ORANGEFS_VFS_OP_READDIRPLUS, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %168

51:                                               ; preds = %46
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* @ORANGEFS_VFS_OP_SETATTR, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %168

56:                                               ; preds = %51
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* @ORANGEFS_VFS_OP_SYMLINK, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %168

61:                                               ; preds = %56
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* @ORANGEFS_VFS_OP_RENAME, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %168

66:                                               ; preds = %61
  %67 = load i64, i64* %4, align 8
  %68 = load i64, i64* @ORANGEFS_VFS_OP_STATFS, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %168

71:                                               ; preds = %66
  %72 = load i64, i64* %4, align 8
  %73 = load i64, i64* @ORANGEFS_VFS_OP_TRUNCATE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %168

76:                                               ; preds = %71
  %77 = load i64, i64* %4, align 8
  %78 = load i64, i64* @ORANGEFS_VFS_OP_RA_FLUSH, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %168

81:                                               ; preds = %76
  %82 = load i64, i64* %4, align 8
  %83 = load i64, i64* @ORANGEFS_VFS_OP_FS_MOUNT, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %168

86:                                               ; preds = %81
  %87 = load i64, i64* %4, align 8
  %88 = load i64, i64* @ORANGEFS_VFS_OP_FS_UMOUNT, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %168

91:                                               ; preds = %86
  %92 = load i64, i64* %4, align 8
  %93 = load i64, i64* @ORANGEFS_VFS_OP_GETXATTR, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %168

96:                                               ; preds = %91
  %97 = load i64, i64* %4, align 8
  %98 = load i64, i64* @ORANGEFS_VFS_OP_SETXATTR, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %168

101:                                              ; preds = %96
  %102 = load i64, i64* %4, align 8
  %103 = load i64, i64* @ORANGEFS_VFS_OP_LISTXATTR, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %168

106:                                              ; preds = %101
  %107 = load i64, i64* %4, align 8
  %108 = load i64, i64* @ORANGEFS_VFS_OP_REMOVEXATTR, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %168

111:                                              ; preds = %106
  %112 = load i64, i64* %4, align 8
  %113 = load i64, i64* @ORANGEFS_VFS_OP_PARAM, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %168

116:                                              ; preds = %111
  %117 = load i64, i64* %4, align 8
  %118 = load i64, i64* @ORANGEFS_VFS_OP_PERF_COUNT, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %168

121:                                              ; preds = %116
  %122 = load i64, i64* %4, align 8
  %123 = load i64, i64* @ORANGEFS_VFS_OP_CANCEL, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %168

126:                                              ; preds = %121
  %127 = load i64, i64* %4, align 8
  %128 = load i64, i64* @ORANGEFS_VFS_OP_FSYNC, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %168

131:                                              ; preds = %126
  %132 = load i64, i64* %4, align 8
  %133 = load i64, i64* @ORANGEFS_VFS_OP_FSKEY, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %168

136:                                              ; preds = %131
  %137 = load i64, i64* %4, align 8
  %138 = load i64, i64* @ORANGEFS_VFS_OP_FEATURES, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %168

141:                                              ; preds = %136
  br label %142

142:                                              ; preds = %141
  br label %143

143:                                              ; preds = %142
  br label %144

144:                                              ; preds = %143
  br label %145

145:                                              ; preds = %144
  br label %146

146:                                              ; preds = %145
  br label %147

147:                                              ; preds = %146
  br label %148

148:                                              ; preds = %147
  br label %149

149:                                              ; preds = %148
  br label %150

150:                                              ; preds = %149
  br label %151

151:                                              ; preds = %150
  br label %152

152:                                              ; preds = %151
  br label %153

153:                                              ; preds = %152
  br label %154

154:                                              ; preds = %153
  br label %155

155:                                              ; preds = %154
  br label %156

156:                                              ; preds = %155
  br label %157

157:                                              ; preds = %156
  br label %158

158:                                              ; preds = %157
  br label %159

159:                                              ; preds = %158
  br label %160

160:                                              ; preds = %159
  br label %161

161:                                              ; preds = %160
  br label %162

162:                                              ; preds = %161
  br label %163

163:                                              ; preds = %162
  br label %164

164:                                              ; preds = %163
  br label %165

165:                                              ; preds = %164
  br label %166

166:                                              ; preds = %165
  br label %167

167:                                              ; preds = %166, %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %168

168:                                              ; preds = %167, %140, %135, %130, %125, %120, %115, %110, %105, %100, %95, %90, %85, %80, %75, %70, %65, %60, %55, %50, %45, %40, %35, %30, %25, %20, %15
  %169 = load i8*, i8** %2, align 8
  ret i8* %169
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
