
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *get_afmt_string(int afmt)
{
        switch(afmt) {
            case 134:
                return "mu-law";
                break;
            case 135:
                return "A-law";
                break;
            case 128:
                return "unsigned 8 bit";
                break;
            case 131:
                return "signed 8 bit";
                break;
            case 133:
                return "signed 16 bit BE";
                break;
            case 130:
                return "unsigned 16 bit BE";
                break;
            case 132:
                return "signed 16 bit LE";
                break;
            case 129:
                return "unsigned 16 bit LE";
                break;
     case 0:
  return "format not set" ;
  break ;
            default:
                break ;
        }
        return "ERROR: Unsupported AFMT_XXXX code" ;
}
